.class public Lcom/android/camera/ui/DragLayout;
.super Landroid/widget/FrameLayout;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/DragLayout$DragAnimationConfig;,
        Lcom/android/camera/ui/DragLayout$OnDragListener;,
        Lcom/android/camera/ui/DragLayout$Dependency;
    }
.end annotation


# static fields
.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPEND:I = 0x4

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final STATE_SHRINK:I = 0x3

.field public static final TAG:Ljava/lang/String;

.field public static debug:Z

.field public static sAnimationConfig:Lcom/android/camera/ui/DragLayout$DragAnimationConfig;


# instance fields
.field public mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

.field public mCatchDrag:Z

.field public mChildren:Landroid/widget/FrameLayout;

.field public mContainView:Landroid/widget/FrameLayout;

.field public mCurDirectionIsUp:Z

.field public final mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

.field public mDragInterpolator:Landroid/view/animation/Interpolator;

.field public mDragMode:Z

.field public mOffset:F

.field public mOnDragListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/ui/DragLayout$OnDragListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPromptMode:Z

.field public mSkipDragUpDown:Z

.field public mStartDirectionIsUp:Z

.field public mStartX:F

.field public mStartY:F

.field public mState:I

.field public mValueAnimatorListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/DragLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/android/camera/ui/DragLayout;->debug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/DragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/DragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    .line 5
    iput-boolean p2, p0, Lcom/android/camera/ui/DragLayout;->mCatchDrag:Z

    .line 6
    iput-boolean p2, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    .line 7
    iput-boolean p2, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    .line 8
    iput p2, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    .line 10
    sget-object p2, Lcom/android/camera/ui/DragLayout;->sAnimationConfig:Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    if-nez p2, :cond_0

    .line 11
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getDragConfig(Landroid/content/Context;)Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p1

    sput-object p1, Lcom/android/camera/ui/DragLayout;->sAnimationConfig:Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    .line 12
    :cond_0
    new-instance p1, Lcom/android/camera/ui/DragLayout$Dependency;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/camera/ui/DragLayout$Dependency;-><init>(Lcom/android/camera/ui/DragLayout;Lcom/android/camera/ui/DragLayout$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    .line 13
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDragInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    new-instance p1, Lcom/android/camera/ui/DragLayout$1;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/DragLayout$1;-><init>(Lcom/android/camera/ui/DragLayout;)V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayout;->mValueAnimatorListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    return-void
.end method

.method private LogD(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private LogV(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/camera/ui/DragLayout;->debug:Z

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/DragLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/DragLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/DragLayout;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/DragLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera/ui/DragLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/DragLayout;)Lcom/android/camera/ui/DragLayout$Dependency;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/DragLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/DragLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/DragLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/DragLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/DragLayout;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/DragLayout;)Lcom/android/camera/ui/BaseDragLayoutBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    return-object p0
.end method

.method private ensureView()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->updateDragBar(Z)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    :cond_0
    return-void
.end method

.method public static getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/DragLayout;->sAnimationConfig:Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    return-object v0
.end method

.method private getContainView()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mContainView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0a02ce

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mContainView:Landroid/widget/FrameLayout;

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mContainView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private isInvalidMoveEvent(ZLandroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget p0, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    sub-float/2addr v0, p0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    const/4 p0, 0x1

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    return p0

    :cond_1
    cmpg-float p1, v0, v1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, p2

    :goto_1
    return p0
.end method

.method private onDrag(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDrag skip ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget p1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const-string/jumbo p1, "onDrag fail in prompt mode."

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/DragLayout;->promptShrink(Z)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayout;->promptExpand()Z

    :goto_0
    return v3

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_9

    .line 8
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/DragLayout;->isInvalidMoveEvent(ZLandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 11
    iget p1, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_8

    .line 12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 13
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 14
    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 15
    iget-object v1, p0, Lcom/android/camera/ui/DragLayout;->mDragInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    neg-float p1, p1

    .line 16
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_7

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    move v5, v3

    .line 17
    :cond_6
    iput-boolean v5, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    .line 18
    :cond_7
    iput p1, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    float-to-int p1, p1

    iget-boolean p0, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragProgress(IZ)V

    :cond_8
    return v3

    :cond_9
    return v5

    .line 20
    :cond_a
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-ne v0, v2, :cond_b

    move v5, v3

    :cond_b
    iput-boolean v5, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    .line 21
    iput-boolean v5, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragStart(Z)V

    .line 23
    invoke-direct {p0, v3}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    .line 24
    iput v4, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    return v3
.end method

.method private setState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq v0, p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    :cond_0
    return-void
.end method

.method private shrink(ZLjava/lang/Runnable;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "shrink fail, state error. now state :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v0

    new-instance v1, Lcom/android/camera/ui/DragLayout$2;

    iget-object v2, p0, Lcom/android/camera/ui/DragLayout;->mValueAnimatorListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/camera/ui/DragLayout$2;-><init>(Lcom/android/camera/ui/DragLayout;Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0, v0, p0, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->popupMoreMode(FFFLcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eqz p1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragStart(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {p1, v1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragProgress(IZ)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragDone(Z)V

    .line 8
    invoke-direct {p0, p2}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateDragBar(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only set one mode enable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    if-nez v0, :cond_2

    const v0, 0x7f0a0140

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BaseDragLayoutBar;

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDragEnable mDragMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPromptMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mBar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",withAnim : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    if-eqz v0, :cond_5

    .line 7
    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-nez v1, :cond_3

    const/16 p0, 0x8

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaToOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/camera/animation/folme/FolmeAlphaToOnSubscribe;-><init>(Landroid/view/View;FF)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 10
    :cond_4
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    return p0
.end method

.method public synthetic OooO0O0()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    return-void
.end method

.method public addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnDragListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public disableAllMode()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/ui/DragLayout;->TAG:Ljava/lang/String;

    const-string v1, "disableAllMode"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/DragLayout;->setPromptMode(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/DragLayout;->setDragMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDragMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPromptMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    if-nez v0, :cond_2

    const v0, 0x7f0a0140

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BaseDragLayoutBar;

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v0, :cond_21

    const/4 v7, 0x0

    if-eq v0, v6, :cond_19

    if-eq v0, v1, :cond_3

    goto/16 :goto_8

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 10
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    if-eqz v0, :cond_5

    .line 11
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 12
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mCatchDrag:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {v0}, Lcom/android/camera/ui/DragLayout$Dependency;->onInterceptDrag()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "skip drag caz dependency intercept."

    .line 13
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 14
    iput-boolean v6, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    .line 15
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 16
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    sub-float/2addr v0, v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v8, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    sub-float/2addr v1, v8

    .line 18
    iget v8, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq v8, v5, :cond_7

    if-ne v8, v4, :cond_9

    .line 19
    :cond_7
    iget-boolean v8, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-eqz v8, :cond_8

    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDragThreshold()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    .line 21
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDragThreshold()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    return v6

    .line 22
    :cond_8
    iget-boolean v8, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-eqz v8, :cond_18

    .line 23
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDragThreshold()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDragThreshold()F

    move-result v9

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    return v6

    .line 25
    :cond_9
    iget v8, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-ne v8, v5, :cond_e

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_a

    move v0, v6

    goto :goto_0

    :cond_a
    move v0, v2

    :goto_0
    if-eqz v0, :cond_c

    cmpl-float v0, v1, v7

    if-lez v0, :cond_b

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_2

    :cond_c
    :goto_1
    move v0, v6

    :goto_2
    if-eqz v0, :cond_f

    .line 27
    iput-boolean v6, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    const-string/jumbo v0, "skip drag up."

    .line 28
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    if-eqz v0, :cond_d

    .line 30
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BaseDragLayoutBar;->start(I)Z

    .line 31
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_e
    move v0, v2

    .line 32
    :cond_f
    iget v8, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-ne v8, v4, :cond_12

    cmpl-float v8, v1, v7

    const-string/jumbo v9, "skip drag down."

    if-nez v8, :cond_10

    .line 33
    invoke-direct {p0, v9}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_10
    cmpg-float v1, v1, v7

    if-gez v1, :cond_11

    move v0, v6

    :cond_11
    if-eqz v0, :cond_12

    .line 35
    iput-boolean v6, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    .line 36
    invoke-direct {p0, v9}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 38
    :cond_12
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    if-eqz v0, :cond_15

    .line 39
    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq v1, v5, :cond_14

    if-eq v1, v4, :cond_13

    goto :goto_3

    .line 40
    :cond_13
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/BaseDragLayoutBar;->start(I)Z

    goto :goto_3

    .line 41
    :cond_14
    invoke-virtual {v0, v6}, Lcom/android/camera/ui/BaseDragLayoutBar;->start(I)Z

    .line 42
    :cond_15
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->onDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    move v2, v6

    :cond_17
    return v2

    :cond_18
    return v6

    .line 43
    :cond_19
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1a

    .line 44
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 45
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    if-eqz v0, :cond_1b

    .line 46
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/BaseDragLayoutBar;->start(I)Z

    .line 47
    :cond_1b
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-ne v0, v6, :cond_26

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUp "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOffset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1f

    .line 50
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mStartDirectionIsUp:Z

    iget-boolean v2, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    if-ne v0, v2, :cond_1d

    .line 51
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    if-eqz v2, :cond_1c

    .line 52
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v2

    neg-float v2, v2

    goto :goto_4

    .line 53
    :cond_1c
    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v2

    goto :goto_4

    .line 54
    :cond_1d
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mOffset:F

    move v2, v7

    .line 55
    :goto_4
    iget-object v3, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1e

    const/16 v4, 0x3e8

    .line 56
    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 57
    iget-object v3, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 58
    :cond_1e
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/DragLayout;->mValueAnimatorListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    invoke-interface {v3, v0, v2, v7, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->popupMoreMode(FFFLcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V

    .line 59
    invoke-direct {p0, v1}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    goto :goto_6

    .line 60
    :cond_1f
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragDone(Z)V

    .line 61
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    if-eqz v0, :cond_20

    goto :goto_5

    :cond_20
    move v4, v5

    :goto_5
    invoke-direct {p0, v4}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    .line 62
    :goto_6
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mCatchDrag:Z

    if-nez v0, :cond_26

    return v6

    .line 63
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_22

    .line 65
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_7

    .line 66
    :cond_22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 67
    :goto_7
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 68
    iput-boolean v2, p0, Lcom/android/camera/ui/DragLayout;->mSkipDragUpDown:Z

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    .line 71
    iget-object v1, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    iget v2, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/DragLayout$Dependency;->catchDrag(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mCatchDrag:Z

    if-eqz v0, :cond_23

    const-string v0, "dependency wanna catch drag event."

    .line 72
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 73
    :cond_23
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mStartX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/camera/ui/DragLayout;->mStartY:F

    float-to-int v2, v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DragLayout$Dependency;->showPress(II)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mBar:Lcom/android/camera/ui/BaseDragLayoutBar;

    if-eqz v0, :cond_26

    .line 76
    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eq v1, v5, :cond_25

    if-eq v1, v4, :cond_24

    goto :goto_8

    .line 77
    :cond_24
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/BaseDragLayoutBar;->start(I)Z

    goto :goto_8

    .line 78
    :cond_25
    invoke-virtual {v0, v6}, Lcom/android/camera/ui/BaseDragLayoutBar;->start(I)Z

    .line 79
    :cond_26
    :goto_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getDragChildren()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mChildren:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0a0142

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/DragLayout;->mChildren:Landroid/widget/FrameLayout;

    .line 3
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO;-><init>(Lcom/android/camera/ui/DragLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/DragLayout;->mChildren:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public isExpanded()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShrink()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

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

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->ensureView()V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/DragLayout;->getContainView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->isInViewRegion(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public promptExpand()Z
    .locals 2

    const-string/jumbo v0, "promptExpand"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expand fail, state error. now state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getTotalDragDistance()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0oo;-><init>(Lcom/android/camera/ui/DragLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->promptExpand(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public promptShrink(Z)Z
    .locals 2

    const-string/jumbo v0, "promptShrink"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shrink fail, state error. now state :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayout;->getDragChildren()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOO0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOO0;-><init>(Lcom/android/camera/ui/DragLayout;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->promptShrink(ZLjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public removeOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeOnDragListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/DragLayout;->LogV(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mOnDragListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/ui/DragLayout;->mCurDirectionIsUp:Z

    invoke-interface {p1, p0}, Lcom/android/camera/ui/DragLayout$OnDragListener;->onDragDone(Z)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/DragLayout;->mState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragStart(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragProgress(IZ)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/DragLayout;->mDependency:Lcom/android/camera/ui/DragLayout$Dependency;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/DragLayout$Dependency;->onDragDone(Z)V

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera/ui/DragLayout;->setState(I)V

    :cond_0
    return-void
.end method

.method public setDragMode(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPopupMoreStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getActiveModuleIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/global/ComponentModuleList;->isCommonMode(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 4
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDragEnable mDragMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", force : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->LogD(Ljava/lang/String;)V

    .line 5
    iget-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-eq p1, v0, :cond_4

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    if-eqz v0, :cond_3

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    :cond_3
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->updateDragBar(Z)V

    :cond_4
    return-void
.end method

.method public setPromptMode(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mPromptMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/ui/DragLayout;->mDragMode:Z

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayout;->updateDragBar(Z)V

    :cond_1
    return-void
.end method

.method public shrink(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/DragLayout;->shrink(ZLjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
