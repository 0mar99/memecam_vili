.class public Lcom/android/camera/ActivityBase$ActivityHandler;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityHandler"
.end annotation


# instance fields
.field public final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ActivityBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/camera/ActivityBase$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "CameraExitHint"

    const v2, 0x7f1300ba

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "ActivityBase"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3
    :pswitch_1
    new-instance p1, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;-><init>()V

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->setErrorType(I)V

    .line 5
    invoke-virtual {p1, v3, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string/jumbo p0, "on APK version error, finish activity after 3 seconds"

    .line 9
    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 11
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v2, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "exception occurs, msg = %s , exception = 0x%x"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xe6

    if-eq v0, p1, :cond_2

    const/16 p1, 0xe7

    if-eq v0, p1, :cond_2

    const/16 p1, 0xec

    if-eq v0, p1, :cond_1

    const/16 p1, 0xed

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_3
    const p1, 0x7f120244

    .line 12
    invoke-static {p0, p1, v6}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto/16 :goto_1

    :cond_1
    move v6, v4

    .line 14
    :cond_2
    :pswitch_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v0

    const-wide/16 v7, 0x1

    cmp-long p1, v0, v7

    if-lez p1, :cond_3

    .line 15
    invoke-static {v3, p0, v6}, Lcom/android/camera/Util;->showErrorScreen(ILmiuix/appcompat/app/AppCompatActivity;Z)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {v4, p0, v6}, Lcom/android/camera/Util;->showErrorScreen(ILmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->showErrorDialog()V

    goto :goto_1

    .line 18
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->checkFeatureAutoDownload()V

    goto :goto_1

    .line 19
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigThemeRequest(Lcom/android/camera/customization/FlashHalo$ThemeConfiguration;)V

    goto :goto_1

    .line 20
    :pswitch_7
    invoke-static {p0}, Lcom/android/camera/ActivityBase;->access$000(Lcom/android/camera/ActivityBase;)V

    goto :goto_1

    .line 21
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->updateThermal(I)V

    goto :goto_1

    .line 22
    :pswitch_9
    new-instance p1, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;

    invoke-direct {p1}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;-><init>()V

    const/4 v0, 0x3

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->setErrorType(I)V

    .line 24
    invoke-virtual {p1, v3, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 26
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string/jumbo p0, "onThermalNotification finish activity after 3 seconds"

    .line 28
    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 29
    :pswitch_a
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackModeSwitch()V

    goto :goto_1

    :pswitch_b
    const-string p1, "handleMessage:  set mIsFinishInKeyguard = true;"

    .line 30
    invoke-static {v5, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-boolean v4, p0, Lcom/android/camera/ActivityBase;->mIsFinishInKeyguard:Z

    goto :goto_1

    .line 32
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_4

    .line 33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->showDebugInfo(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
