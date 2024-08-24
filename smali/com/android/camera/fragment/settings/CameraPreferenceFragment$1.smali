.class public Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;
.super Ljava/lang/Object;
.source "CameraPreferenceFragment.java"

# interfaces
.implements Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/settings/CameraPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDeviceChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iget-object v1, v0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$000(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->getWindDenoiseUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iget-object v2, v1, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_wind_denoise"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iget v1, v0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->access$000(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->getVideoDenoiseUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;->this$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_video_denoise"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    return-void
.end method
