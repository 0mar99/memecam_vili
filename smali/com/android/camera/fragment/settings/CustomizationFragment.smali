.class public Lcom/android/camera/fragment/settings/CustomizationFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "CustomizationFragment.java"


# static fields
.field public static final KEY_CUSTOM_MODE:Ljava/lang/String; = "pref_custom_feature_layout"

.field public static final KEY_CUSTOM_SHUTTER_SOUND:Ljava/lang/String; = "custom_shutter_sound_key"

.field public static final KEY_CUSTOM_TINT:Ljava/lang/String; = "custom_tint_key"

.field public static final KEY_MORE_MODE:Ljava/lang/String; = "pref_custom_more_mode"

.field public static final TAG:Ljava/lang/String; = "CustomizationFragment"


# instance fields
.field public mCustomShutterSound:Lcom/android/camera/ui/ValuePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addCurrentPreferences()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v1, 0x7f12081d

    const-string/jumbo v2, "pref_custom_feature_layout"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v1, 0x7f120849

    const-string/jumbo v2, "pref_custom_more_mode"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->supportCustomColorTint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v1, 0x7f12081f

    const-string v2, "custom_tint_key"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v1, 0x7f12081e

    const-string v2, "custom_shutter_sound_key"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    :cond_1
    return-void
.end method

.method public getFragmentTitle()I
    .locals 0

    const p0, 0x7f120821

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceClick: key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CustomizationFragment"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "custom_shutter_sound_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_1
    const-string v2, "custom_tint_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "pref_custom_more_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "pref_custom_feature_layout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v5

    :cond_1
    :goto_0
    const/4 p1, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    const-class v0, Lcom/android/camera/customization/CustomTintActivity;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    const-string p0, "attr_edit_tint"

    const-string p1, "edit_tint_outter_click"

    .line 6
    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->customizeCameraSettingClick(Ljava/lang/String;)V

    return v1

    .line 8
    :cond_3
    const-class p1, Lcom/android/camera/fragment/settings/CustomizationExtraActivity;

    const-string v0, "FragmentCustomSound"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    const-string p0, "attr_edit_sound"

    const-string p1, "edit_sound_outter_click"

    .line 9
    invoke-static {p0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->customizeCameraSettingClick(Ljava/lang/String;)V

    return v1

    .line 11
    :cond_4
    const-class p1, Lcom/android/camera/fragment/settings/CustomizationExtraActivity;

    const-string v0, "MoreModeFragment"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    const-string p0, "attr_more_mode"

    .line 12
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->customizeCameraSettingClick(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMFeature;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMFeature;

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->inDownloadingOrWaiting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f12037b

    const/16 v0, 0x50

    invoke-static {p0, p1, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return v5

    .line 16
    :cond_6
    const-class v0, Lcom/android/camera/ModeEditorActivity;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    const-string p0, "attr_edit_mode_setting"

    .line 17
    invoke-static {p0}, Lcom/android/camera/statistic/MistatsWrapper;->customizeCameraSettingClick(Ljava/lang/String;)V

    :goto_1
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b4ad9fb -> :sswitch_3
        -0x4c34e465 -> :sswitch_2
        -0x45dedfd7 -> :sswitch_1
        0x6263e00f -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CustomizationFragment;->mCustomShutterSound:Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->getInstance()Lcom/android/camera/customization/ShutterSound;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/camera/customization/ShutterSound;->readSoundName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerPreferenceListener()V
    .locals 3

    const-string v0, "custom_shutter_sound_key"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ValuePreference;

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CustomizationFragment;->mCustomShutterSound:Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CustomizationFragment;->mCustomShutterSound:Lcom/android/camera/ui/ValuePreference;

    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->getInstance()Lcom/android/camera/customization/ShutterSound;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ShutterSound;->readSoundName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "custom_tint_key"

    .line 4
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    const-string/jumbo v0, "pref_custom_feature_layout"

    .line 6
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    const-string/jumbo v0, "pref_custom_more_mode"

    .line 8
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    return-void
.end method

.method public updatePreferenceEntries()V
    .locals 0

    return-void
.end method
