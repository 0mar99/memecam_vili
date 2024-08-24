.class public Lcom/android/camera/fragment/settings/WatermarkFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "WatermarkFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/settings/WatermarkFragment$AllCapTransformationMethod;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WatermarkFragment"


# instance fields
.field public alertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDefindWatermark:Ljava/lang/String;

.field public mDialogContext:Landroid/content/Context;

.field public mDisposable:Lio/reactivex/disposables/Disposable;

.field public mEtUserDefineWords:Landroid/widget/EditText;

.field public mLimitTV:Landroid/widget/TextView;

.field public mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

.field public final mUserPresentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/fragment/settings/WatermarkFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/settings/WatermarkFragment$1;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance v0, Landroid/util/Pair;

    invoke-static {}, Lcom/android/camera/privacyutil/ContentUtil;->getInstance()Lcom/android/camera/privacyutil/ContentUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/privacyutil/ContentUtil;->checkContentCompliance(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic OooO00o(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "WatermarkFragment"

    const-string/jumbo p1, "onClick NegativeButton"

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mLimitTV:Landroid/widget/TextView;

    return-object p0
.end method

.method private getCustomWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDialogContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDialogContext:Landroid/content/Context;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 5
    iput-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private saveContent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "WatermarkFragment"

    const-string/jumbo v1, "saveContent: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->getCustomWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setCustomWatermark(Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOo0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->generateWatermark2File()V

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackUserDefineWatermark()V

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    .line 12
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, ""

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const p0, 0x7f120343

    .line 14
    invoke-static {v1, p0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    :cond_3
    return-void
.end method

.method private showDialog()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDialogContext:Landroid/content/Context;

    .line 2
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDialogContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f0d003a

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0468

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mLimitTV:Landroid/widget/TextView;

    const v3, 0x7f0a0166

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    .line 7
    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    new-instance v4, Lcom/android/camera/fragment/settings/WatermarkFragment$AllCapTransformationMethod;

    invoke-direct {v4, v2}, Lcom/android/camera/fragment/settings/WatermarkFragment$AllCapTransformationMethod;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const v2, 0x7f120887

    .line 9
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1209df

    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOO0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOO0o;

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 11
    new-instance v0, Lcom/android/camera/privacyutil/RxViewAction;

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    invoke-direct {v0, v2}, Lcom/android/camera/privacyutil/RxViewAction;-><init>(Landroid/view/View;)V

    new-instance v2, Lcom/android/camera/privacyutil/RxDialog;

    const v3, 0x7f1209e0

    .line 12
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/camera/privacyutil/RxDialog;-><init>(Lmiuix/appcompat/app/AlertDialog$Builder;Ljava/lang/String;)V

    .line 13
    invoke-static {v0, v2}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    .line 14
    invoke-virtual {v0, v3, v4, v2}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOO0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOO0;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    .line 15
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOOO;

    .line 17
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 18
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/oo0o0Oo/OooOOO;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    .line 19
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    .line 20
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 21
    new-instance v1, Lcom/android/camera/fragment/settings/WatermarkFragment$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/settings/WatermarkFragment$2;-><init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 22
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic OooO00o(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->saveContent(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f120332

    invoke-static {p1, v0}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->alertDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public addCurrentPreferences()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_time_watermark_key"

    const v3, 0x7f050056

    const v4, 0x7f1207fa

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO00o0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v4, 0x7f050045

    const v5, 0x7f1206ae

    const/4 v6, -0x1

    const-string/jumbo v3, "pref_dualcamera_watermark_key"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const v1, 0x7f120887

    const-string/jumbo v2, "user_define_watermark_key"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    iget p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lcom/android/camera2/compat/theme/MiThemeCompat;->addPreference(Landroidx/preference/PreferenceScreen;IZZ)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getFragmentTitle()I
    .locals 0

    const p0, 0x7f1208d6

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 4
    iput-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mEtUserDefineWords:Landroid/widget/EditText;

    .line 5
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->release()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string/jumbo v4, "pref_dualcamera_watermark_key"

    const-string/jumbo v5, "pref_time_watermark_key"

    const/4 v6, 0x1

    const-string/jumbo v7, "pref_cv_watermark_key"

    const/4 v8, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "user_define_watermark_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "attr_watermark_cv"

    invoke-static {v2, v1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 6
    invoke-interface {v0, v4, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 7
    invoke-interface {v0, v5, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    invoke-virtual {v0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 13
    invoke-virtual {v0, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 14
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {v0, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_4
    return v8

    .line 18
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/Util;->isFromSecureKeyguard()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, v8

    :goto_2
    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_8

    .line 21
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {v0, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 24
    :cond_7
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0oOo0O0()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0, v7, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {v0, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 29
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x2110d1ae -> :sswitch_3
        0x3d39e7d4 -> :sswitch_2
        0x67b0c582 -> :sswitch_1
        0x6871f874 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

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

    const-string v2, "WatermarkFragment"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "user_define_watermark_key"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->showDialog()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onRestart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->updatePreferenceEntries()V

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mLimitTV:Landroid/widget/TextView;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x0

    aput-object p1, p3, p4

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0b002f

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const p1, 0x7f120a26

    .line 3
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public registerPreferenceListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_time_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_dualcamera_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "user_define_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ValuePreference;

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ValuePreference;->setMaxEms(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    return-void
.end method

.method public updatePreferenceEntries()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_dualcamera_watermark_key"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mDefindWatermark:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment;->mUserDefineWatermark:Lcom/android/camera/ui/ValuePreference;

    invoke-static {}, Lcom/android/camera/Util;->isFromSecureKeyguard()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO00o0()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 10
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    .line 11
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
