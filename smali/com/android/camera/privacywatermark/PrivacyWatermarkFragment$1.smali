.class public Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyWatermarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$1;->this$0:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->TAG:Ljava/lang/String;

    const-string p2, "mUserPresentReceiver, onReceive."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$1;->this$0:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;

    invoke-virtual {p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->updatePreferenceEntries()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$1;->this$0:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->access$000(Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$1;->this$0:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;

    invoke-static {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->access$100(Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;)Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method
