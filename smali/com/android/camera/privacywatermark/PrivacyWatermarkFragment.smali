.class public Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "PrivacyWatermarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mListener:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;

.field public mPrivacyWatermarkEdit:Lcom/android/camera/ui/ValuePreference;

.field public final mUserPresentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mListener:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;

    .line 3
    new-instance v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$1;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;)V

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;)Landroidx/preference/PreferenceScreen;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;)Lcom/android/camera/preferences/CameraSettingPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    return-object p0
.end method


# virtual methods
.method public addCurrentPreferences()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_privacy_watermark_enabled"

    const v3, 0x7f050050

    const v4, 0x7f120861

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_privacy_watermark"

    const v2, 0x7f12085d

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    return-void
.end method

.method public getFragmentTitle()I
    .locals 0

    const p0, 0x7f120860

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_privacy_watermark_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class p1, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    invoke-static {p0, p1}, Lcom/android/camera/ActivityLauncher;->launch(Landroid/app/Activity;Ljava/lang/Class;)V

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    .line 6
    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mListener:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;->onPreferenceUpdated()V

    :cond_1
    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3a08daaf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x26b789ad

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "pref_privacy_watermark_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "pref_privacy_watermark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "attr_privacy_watermark_enter"

    .line 2
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPrivacyWaterMarkSettingClick(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class p1, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    invoke-static {p0, p1}, Lcom/android/camera/ActivityLauncher;->launch(Landroid/app/Activity;Ljava/lang/Class;)V

    return v3

    :cond_4
    const-string p0, "attr_privacy_watermark_mode"

    .line 4
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackPrivacyWaterMarkSettingClick(Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method public onRestart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->updatePreferenceEntries()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public registerPreferenceListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_privacy_watermark_enabled"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_privacy_watermark"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ValuePreference;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mPrivacyWatermarkEdit:Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_1

    const/16 v1, 0x9

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ValuePreference;->setMaxEms(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mPrivacyWatermarkEdit:Lcom/android/camera/ui/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mPrivacyWatermarkEdit:Lcom/android/camera/ui/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method

.method public setEventListener(Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mListener:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;

    return-void
.end method

.method public updatePreferenceEntries()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_privacy_watermark_enabled"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mPrivacyWatermarkEdit:Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mPrivacyWatermarkEdit:Lcom/android/camera/ui/ValuePreference;

    invoke-static {}, Lcom/android/camera/Util;->isFromSecureKeyguard()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment;->mListener:Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkFragment$EventListener;->onPreferenceUpdated()V

    :cond_2
    return-void
.end method
