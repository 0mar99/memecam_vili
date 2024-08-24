.class public Lcom/android/camera/fragment/live/FragmentBlankLive;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBlankLive.java"


# static fields
.field public static final FRAGMENT_INFO:I = 0xffa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xffa

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d005d

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
