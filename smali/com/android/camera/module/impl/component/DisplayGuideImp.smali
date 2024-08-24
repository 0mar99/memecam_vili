.class public Lcom/android/camera/module/impl/component/DisplayGuideImp;
.super Ljava/lang/Object;
.source "DisplayGuideImp.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/DisplayGuide;
.implements Lcom/android/camera/display/device/IFoldState$OnFoldedListener;


# static fields
.field public static final FRONT_FACING_DISPLAY_TIP:Ljava/lang/String; = "front_facing_display_tip"

.field public static final TAG:Ljava/lang/String; = "DisplayGuideImp"


# instance fields
.field public mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/DisplayGuideImp;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/impl/component/DisplayGuideImp;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method


# virtual methods
.method public dismissFrontFacingDisplayFoldTip()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "front_facing_display_tip"

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public isSupportFrontFacingDisplayFoldTip(I)Z
    .locals 1

    const/4 p0, 0x0

    const-string v0, "close_front_facing_displayfold_tip"

    .line 1
    invoke-static {v0, p0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayFoldState()Z

    move-result v0

    if-eqz v0, :cond_1

    return p0

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    return p0

    :cond_2
    return v0
.end method

.method public onFolded(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",thread-id:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/android/camera/ShortcutFunction;->initShortcut(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/DisplayGuide;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/display/device/FoldStateAdapter;->getInstance()Lcom/android/camera/display/device/FoldStateAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/display/device/FoldStateAdapter;->init(Landroid/content/Context;Lcom/android/camera/display/device/IFoldState$OnFoldedListener;)V

    return-void
.end method

.method public showFrontFacingDisplayFoldTip()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "front_facing_display_tip"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    :cond_0
    new-instance v1, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;

    invoke-direct {v1}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;-><init>()V

    .line 6
    new-instance v3, Lcom/android/camera/module/impl/component/DisplayGuideImp$1;

    invoke-direct {v3, p0}, Lcom/android/camera/module/impl/component/DisplayGuideImp$1;-><init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setOnClick(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f12034b

    .line 7
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setTipText(I)V

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo0()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f110036

    goto :goto_0

    :cond_1
    const p0, 0x7f110003

    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->setAnimRawResId(I)V

    const/4 p0, 0x2

    const v3, 0x7f1300ba

    .line 9
    invoke-virtual {v1, p0, v3}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 10
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/DisplayGuide;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/display/device/FoldStateAdapter;->getInstance()Lcom/android/camera/display/device/FoldStateAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/display/device/FoldStateAdapter;->unInit()V

    return-void
.end method
