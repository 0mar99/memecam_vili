.class public Lcom/android/camera/scanner/MiScanner;
.super Ljava/lang/Object;
.source "MiScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;
    }
.end annotation


# static fields
.field public static final GO_TO_SCAN_REQUEST_CODE:I = 0x3e9

.field public static final SCAN_APK_PATH:Ljava/lang/String; = "/system/data-app/MiuiScanner/MiuiScanner.apk"

.field public static final SCAN_APP_CLASS_NAME:Ljava/lang/String; = "com.xiaomi.scanner.app.ScanActivity"

.field public static final SCAN_APP_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.scanner"

.field public static final SCAN_NEW_APP_CLASS_NAME:Ljava/lang/String; = "com.xiaomi.camerascan.activity.HomePageActivity"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mActivity:Landroid/app/Activity;

.field public final mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

.field public mCompletableEmitter:Lio/reactivex/ObservableEmitter;

.field public mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mInstalledCallback:Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;

.field public mIsShowProgressDialog:Z

.field public mScanInstallDisposable:Lio/reactivex/disposables/Disposable;

.field public mUnlockIntent:Landroid/content/Intent;

.field public mUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/scanner/MiScanner;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/scanner/MiScanner;->mIsShowProgressDialog:Z

    .line 4
    new-instance v0, Lcom/android/camera/scanner/MiScanner$2;

    invoke-direct {v0, p0}, Lcom/android/camera/scanner/MiScanner$2;-><init>(Lcom/android/camera/scanner/MiScanner;)V

    iput-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    .line 5
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string v1, "init MiScanner"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    .line 7
    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/scanner/MiScanner;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/scanner/MiScanner;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/scanner/MiScanner;)Lio/reactivex/ObservableEmitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->mCompletableEmitter:Lio/reactivex/ObservableEmitter;

    return-object p0
.end method

.method private installScanReceiver(Z)V
    .locals 1

    .line 1
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0OO;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0OO;-><init>(Lcom/android/camera/scanner/MiScanner;Z)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO00o;-><init>(Lcom/android/camera/scanner/MiScanner;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mScanInstallDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 24
    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showInstallScanPromptDialog onClick negative"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "value_scanner_click_install_dialog_cancel"

    .line 25
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    iget-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstalledCallback:Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;->InstalledSuccessCallback()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/scanner/MiScanner;->startScanApp()V

    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showInstallScanPromptDialog onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "value_scanner_click_install_dialog_confirme"

    .line 11
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/scanner/MiScanner;->mIsShowProgressDialog:Z

    if-eqz v0, :cond_2

    .line 16
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/data-app/MiuiScanner/MiuiScanner.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanApkFile isExists = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    const v1, 0x7f120907

    .line 20
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2, v2}, Lcom/android/camera/RotateDialogController;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;IZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "value_scanner_click_install_enter_appstore"

    .line 22
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    .line 23
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/scanner/MiScanner;->installScanReceiver(Z)V

    return-void
.end method

.method public synthetic OooO00o(ZLio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string v1, "installScanReceiver ... "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p2, p0, Lcom/android/camera/scanner/MiScanner;->mCompletableEmitter:Lio/reactivex/ObservableEmitter;

    .line 3
    iget-object p2, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->mAppInstalledListener:Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    const-string v0, "com.xiaomi.scanner"

    const/4 v1, 0x0

    invoke-static {p2, v0, p0, v1, p1}, Lcom/android/camera/Util;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;ZZ)V

    return-void
.end method

.method public getScanAppClassName()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.camerascan.activity.HomePageActivity"

    const-string v2, "com.xiaomi.scanner"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v2, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.xiaomi.scanner.app.ScanActivity"

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewScanApp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ScanAppClassName= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "backToCameraApp requestCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3e9

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeChangeController;->impl2()Lcom/android/camera/protocol/protocols/ModeChangeController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ModeChangeController;->resetToCommonMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mScanInstallDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public setIsShowProgressDialog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/scanner/MiScanner;->mIsShowProgressDialog:Z

    return-void
.end method

.method public setMiScanInstalledCallback(Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstalledCallback:Lcom/android/camera/scanner/MiScanner$MiScanInstalledCallback;

    return-void
.end method

.method public showInstallScanPromptDialog(Z)V
    .locals 10

    const-string/jumbo v0, "value_scanner_click_install_dialog"

    .line 1
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    const v0, 0x7f120906

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f120908

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120461

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0O0;

    invoke-direct {v5, p0, p1}, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0O0;-><init>(Lcom/android/camera/scanner/MiScanner;Z)V

    const/high16 p1, 0x1040000

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0Oo;

    invoke-direct {v9, p0}, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0Oo;-><init>(Lcom/android/camera/scanner/MiScanner;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/scanner/MiScanner;->mInstallPromptDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public startScanApp()V
    .locals 4

    const-string/jumbo v0, "value_scanner_click_icon_start"

    .line 1
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/camera/ActivityBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 4
    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v2

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isQRCodeReceiverAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string v2, "keyguard locked..."

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Lcom/android/camera/scanner/MiScanner$1;

    invoke-direct {v1, p0}, Lcom/android/camera/scanner/MiScanner$1;-><init>(Lcom/android/camera/scanner/MiScanner;)V

    iput-object v1, p0, Lcom/android/camera/scanner/MiScanner;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->dismissKeyguard()V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scanner installed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/camera/scanner/MiScanner;->getScanAppClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.xiaomi.scanner"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    iget-object p0, p0, Lcom/android/camera/scanner/MiScanner;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo p0, "value_scanner_click_enter_scanner"

    .line 16
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackClickScanner(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-nez v3, :cond_3

    .line 17
    iget-object v0, p0, Lcom/android/camera/scanner/MiScanner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scanner not installed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0, v2}, Lcom/android/camera/scanner/MiScanner;->showInstallScanPromptDialog(Z)V

    :cond_3
    :goto_1
    return-void
.end method
