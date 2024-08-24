.class public abstract Lcom/android/camera/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;
.implements Lcom/android/camera/protocol/BaseProtocol;


# static fields
.field public static final DEGREE_LEFT_LANDSCAPE:I = 0x5a

.field public static final DEGREE_RIGHT_LANDSCAPE:I = 0x10e

.field public static final DEGREE_ROTATE_FLIP:I = 0xb4

.field public static final STATE_HIDE:I = -0x1

.field public static final STATE_SHOW:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAppController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/AppController;",
            ">;"
        }
    .end annotation
.end field

.field public mAsyncView:Landroid/view/View;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mCurrentMode:I

.field public mDegree:I

.field public mEnableClick:Z

.field public mInModeChanging:Z

.field public mIsFullScreenNavBarHidden:Z

.field public mIsnotchScreenHidden:Z

.field public mLaseFragmentInfo:I

.field public mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

.field public mNewFragmentInfo:I

.field public mRegistered:Z

.field public mResetType:I

.field public mSilentRemove:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/BaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/16 v0, 0xf0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLaseFragmentInfo:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mNewFragmentInfo:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mSilentRemove:Z

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mResetType:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mAsyncView:Landroid/view/View;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return-void
.end method

.method public static isLeftBothLandScape(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isLeftLandScape(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRightLandScape(I)Z
    .locals 1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public varargs alignSnapBottom(I[Landroid/view/View;)V
    .locals 4

    .line 1
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    .line 3
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 6
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 7
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs alignSnapLeft(I[Landroid/view/View;)V
    .locals 4

    .line 1
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    .line 3
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 5
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs alignSnapRight(I[Landroid/view/View;)V
    .locals 4

    .line 1
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    .line 3
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 5
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs alignSnapTop(I[Landroid/view/View;)V
    .locals 4

    .line 1
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    .line 3
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 6
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 7
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public animateViews(ILjava/util/List;FLandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;F",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x1

    const/high16 v0, -0x40800000    # -1.0f

    if-ne p1, p0, :cond_3

    if-nez p2, :cond_1

    .line 4
    invoke-static {p4}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    invoke-direct {p0, p4}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    cmpl-float p1, p3, v0

    if-nez p1, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 6
    invoke-static {p4}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_4
    new-instance p0, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;

    invoke-direct {p0, p4}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    cmpl-float p1, p3, v0

    if-nez p1, :cond_5

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public animateViews(ILjava/util/List;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;FLandroid/view/View;)V

    return-void
.end method

.method public animateViews(IZLandroid/view/View;)V
    .locals 0

    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x1

    if-ne p1, p0, :cond_2

    if-nez p2, :cond_1

    .line 10
    invoke-static {p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p0, p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 12
    invoke-static {p3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_3
    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, p3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public final canProvide()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public getBaseModule()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getBottomActionWidth()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 3
    invoke-static {v0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 5
    invoke-static {v0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    :goto_0
    return p0
.end method

.method public final getDegree()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    return p0
.end method

.method public getFatAlignEnd()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    :goto_0
    return p0
.end method

.method public getFatAlignHorizontal()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070155

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public abstract getFragmentInto()I
.end method

.method public final getFragmentTag()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getLayoutResourceId()I
.end method

.method public getThinAlignHorizontal()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public abstract initView(Landroid/view/View;)V
.end method

.method public varargs initViewBackground(Z[Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object p0

    const v0, 0x7f0600ad

    const v1, 0x7f0600a9

    invoke-interface {p0, p1, v0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getViewBackgroundColor(ZII)I

    move-result p0

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v0

    const v1, 0x7f080106

    const v2, 0x7f080105

    invoke-interface {v0, p1, v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getViewBackgroundIconRes(ZII)I

    move-result v0

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v4

    invoke-interface {v4, v3, v0, p0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->setBackGroundColor(Landroid/view/View;IIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isBothLandscapeMode()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/module/ModuleManager;->isBothLandscapeMode(I)Z

    move-result p0

    return p0
.end method

.method public isEnableClick()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return p0
.end method

.method public final isFlipRotate()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInModeChanging()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/BaseFragment;->mInModeChanging:Z

    return p0
.end method

.method public final isLandScape()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isLeftBothLandScape()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-static {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftBothLandScape(I)Z

    move-result p0

    return p0
.end method

.method public final isLeftLandScape()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-static {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape(I)Z

    move-result p0

    return p0
.end method

.method public final isLeftLandscapeMode()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/module/ModuleManager;->isLeftLandscapeMode(I)Z

    move-result p0

    return p0
.end method

.method public final isRightBothLandScape()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftBothLandScape()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isRightLandScape()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-static {p0}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape(I)Z

    move-result p0

    return p0
.end method

.method public needViewClear()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mInModeChanging:Z

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragment;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    and-int/lit16 p1, v0, 0x80

    const/16 v1, 0x80

    if-eq p1, v1, :cond_0

    const/16 p1, 0x800

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/BaseFragment;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 6
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    :cond_1
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mLaseFragmentInfo:I

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->provideEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mSilentRemove:Z

    if-nez p1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mNewFragmentInfo:I

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->provideExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p3

    iput p3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->isFullScreenNavBarHidden()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/fragment/BaseFragment;->mIsFullScreenNavBarHidden:Z

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isNotchScreenHidden()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/fragment/BaseFragment;->mIsnotchScreenHidden:Z

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p3

    invoke-virtual {p3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOO00()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragment;->mAsyncView:Landroid/view/View;

    if-nez p3, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getLayoutResourceId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 6
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/BaseFragment;->initView(Landroid/view/View;)V

    return-object p3
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mRegistered:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterProtocol()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeDestroy(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mConfiguration:Landroid/content/res/Configuration;

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mIsnotchScreenHidden:Z

    invoke-static {}, Lcom/android/camera/display/Display;->isNotchScreenHidden()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mIsFullScreenNavBarHidden:Z

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->isFullScreenNavBarHidden()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->initView(Landroid/view/View;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->isNotchScreenHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mIsnotchScreenHidden:Z

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->isFullScreenNavBarHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mIsFullScreenNavBarHidden:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public pendingGone(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mSilentRemove:Z

    return-void
.end method

.method public pendingShow()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "fragment is not added, pendingShow return."

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p0, Lcom/android/camera/fragment/BaseFragment;->mInModeChanging:Z

    .line 2
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 3
    iput p3, p0, Lcom/android/camera/fragment/BaseFragment;->mResetType:I

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

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 0

    return-void
.end method

.method public final registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p2}, Lcom/android/camera/protocol/protocols/BackStack;->addInBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public final registerProtocol()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseFragment;->mRegistered:Z

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    return-void
.end method

.method public setAppController(Lcom/android/camera/AppController;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setAsyncInflaterView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragment;->mAsyncView:Landroid/view/View;

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClickEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return-void
.end method

.method public final setDegree(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    return-void
.end method

.method public setEnableClickInitValue(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseFragment;->mEnableClick:Z

    return-void
.end method

.method public setLastFragmentInfo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mLaseFragmentInfo:I

    return-void
.end method

.method public setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragment;->mLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    return-void
.end method

.method public setNewFragmentInfo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/BaseFragment;->mNewFragmentInfo:I

    return-void
.end method

.method public startAnimateViewGone(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p1, 0x104

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p1, v1, p2, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public startAnimateViewVisible(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    new-instance p0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 p1, 0xf0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    const/16 p1, 0x12c

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p1, v1, p2, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 0

    return-void
.end method

.method public final unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p2}, Lcom/android/camera/protocol/protocols/BackStack;->removeBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public final unRegisterProtocol()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
