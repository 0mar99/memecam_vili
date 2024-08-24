.class public Lcom/android/camera/fragment/settings/SmartGuideFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "SmartGuideFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

.field public mIsFrontCamera:Z

.field public mScanAlertDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/settings/SmartGuideFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/fragment/settings/SmartGuideFragment$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/settings/SmartGuideFragment$3;-><init>(Lcom/android/camera/fragment/settings/SmartGuideFragment;)V

    iput-object v0, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    return-void
.end method

.method public static synthetic OooO00o()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->TAG:Ljava/lang/String;

    const-string v1, "installQRCodeReceiver onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/settings/SmartGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/SmartGuideFragment;->installQRCodeReceiver()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/settings/SmartGuideFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->mScanAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/settings/SmartGuideFragment;)Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    return-object p0
.end method

.method private installQRCodeReceiver()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/settings/SmartGuideFragment$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/settings/SmartGuideFragment$2;-><init>(Lcom/android/camera/fragment/settings/SmartGuideFragment;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 2
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateQRCodeEntry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_scan_qrcode_key"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 5
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lcom/android/camera/fragment/settings/SmartGuideFragment;->TAG:Ljava/lang/String;

    const-string v3, "disable QRCodeScan"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v2, 0x0

    .line 8
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addCurrentPreferences()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->mIsFrontCamera:Z

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAiTipNeed(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00O0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v4, 0x7f050038

    const v5, 0x7f1207d3

    const v6, 0x7f12090f

    const-string/jumbo v3, "pref_camera_ai_detect_id_card"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->mIsFrontCamera:Z

    .line 6
    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAiTipNeed(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Oo0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v4, 0x7f050038

    const v5, 0x7f1207d2

    const v6, 0x7f120910

    const-string/jumbo v3, "pref_camera_ai_detect_doc"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 9
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->mIsFrontCamera:Z

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getScanQrcodeSettingNeed(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v4, 0x7f050055

    const v5, 0x7f120875

    const v6, 0x7f120874

    const-string/jumbo v3, "pref_scan_qrcode_key"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    :cond_2
    return-void
.end method

.method public getFragmentTitle()I
    .locals 0

    const p0, 0x7f120881

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->mIsFrontCamera:Z

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 10

    .line 1
    sget-object v0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceClick() called with: preference = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x609904ec

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "pref_scan_qrcode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->mScanAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    return v0

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const p1, 0x7f120318

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f120317

    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f120461

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooO;

    invoke-direct {v5, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooO;-><init>(Lcom/android/camera/fragment/settings/SmartGuideFragment;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 p1, 0x1040000

    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooO0oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooO0oo;

    .line 10
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment;->mScanAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 11
    new-instance v1, Lcom/android/camera/fragment/settings/SmartGuideFragment$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/settings/SmartGuideFragment$1;-><init>(Lcom/android/camera/fragment/settings/SmartGuideFragment;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public onRestart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/SmartGuideFragment;->updateQRCodeEntry()V

    return-void
.end method

.method public registerPreferenceListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public updatePreferenceEntries()V
    .locals 0

    return-void
.end method
