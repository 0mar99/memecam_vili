.class public Lcom/android/camera/ui/DragLayoutBar;
.super Lcom/android/camera/ui/BaseDragLayoutBar;
.source "DragLayoutBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/DragLayoutBar$UiState;
    }
.end annotation


# static fields
.field public static final FLAT_DURATION:I = 0x258

.field public static final FOLD_DURATION:I = 0xc8

.field public static final TAG:Ljava/lang/String;

.field public static final UI_STATE_FLAT:I = 0x0

.field public static final UI_STATE_FOLD_DOWN:I = -0x1

.field public static final UI_STATE_FOLD_UP:I = 0x1


# instance fields
.field public isUpAnimation:Z

.field public mAlpha:F

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mBgColor:I

.field public mCurUiState:I

.field public mDegree:F

.field public mExtendDimen:F

.field public mFlatEnable:Z

.field public mFlatInterpolator:Landroid/view/animation/Interpolator;

.field public mFoldInterpolator:Landroid/view/animation/Interpolator;

.field public mHeight:F

.field public mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public mOffset:F

.field public mRadius:F

.field public mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public mTargetUiState:I

.field public mWidth:F

.field public mWidthMax:F

.field public mWidthMin:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/DragLayoutBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/DragLayoutBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/DragLayoutBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/DragLayoutBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/BaseDragLayoutBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/android/camera/ui/DragLayoutBar;->mCurUiState:I

    .line 5
    iput p2, p0, Lcom/android/camera/ui/DragLayoutBar;->mTargetUiState:I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/android/camera/ui/DragLayoutBar;->mFlatEnable:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/DragLayoutBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/ui/DragLayoutBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mDegree:F

    return p1
.end method

.method public static synthetic access$102(Lcom/android/camera/ui/DragLayoutBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/DragLayoutBar;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidthMax:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/DragLayoutBar;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayoutBar;->mExtendDimen:F

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/DragLayoutBar;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/DragLayoutBar;->isUpAnimation:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/DragLayoutBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mOffset:F

    return p1
.end method

.method public static synthetic access$602(Lcom/android/camera/ui/DragLayoutBar;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mCurUiState:I

    return p1
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/DragLayoutBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayoutBar;->mTargetUiState:I

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07064c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidthMax:F

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07064d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidthMin:F

    .line 3
    iget v1, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidthMax:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mExtendDimen:F

    .line 4
    iput v1, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070647

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mHeight:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mRadius:F

    .line 7
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 8
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    float-to-int v0, v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mHeight:F

    float-to-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    float-to-int v0, v0

    div-int/2addr v0, v1

    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mHeight:F

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v0, 0x8

    new-array v2, v0, [F

    iget v4, p0, Lcom/android/camera/ui/DragLayoutBar;->mRadius:F

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    aput v4, v2, v1

    const/4 v6, 0x3

    aput v4, v2, v6

    const/4 v7, 0x4

    aput v4, v2, v7

    const/4 v8, 0x5

    aput v4, v2, v8

    const/4 v9, 0x6

    aput v4, v2, v9

    const/4 v10, 0x7

    aput v4, v2, v10

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 11
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 12
    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    float-to-int v2, v2

    div-int/2addr v2, v1

    iget v4, p0, Lcom/android/camera/ui/DragLayoutBar;->mHeight:F

    float-to-int v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    float-to-int v2, v2

    div-int/2addr v2, v1

    iget v4, p0, Lcom/android/camera/ui/DragLayoutBar;->mHeight:F

    float-to-int v4, v4

    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    new-array v0, v0, [F

    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mRadius:F

    aput v2, v0, v3

    aput v2, v0, v5

    aput v2, v0, v1

    aput v2, v0, v6

    aput v2, v0, v7

    aput v2, v0, v8

    aput v2, v0, v9

    aput v2, v0, v10

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/ui/DragLayoutBar;->updateBgColor()V

    .line 16
    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mFoldInterpolator:Landroid/view/animation/Interpolator;

    .line 17
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mFlatInterpolator:Landroid/view/animation/Interpolator;

    new-array p1, v1, [F

    .line 18
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 19
    new-instance v0, Lcom/android/camera/ui/DragLayoutBar$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/DragLayoutBar$1;-><init>(Lcom/android/camera/ui/DragLayoutBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/DragLayoutBar$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/DragLayoutBar$2;-><init>(Lcom/android/camera/ui/DragLayoutBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getTargetAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/DragLayoutBar;->mAlpha:F

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidthMax:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/DragLayoutBar;->mOffset:F

    add-float/2addr v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayoutBar;->isUpAnimation:Z

    const/high16 v2, 0x43340000    # 180.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mDegree:F

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mDegree:F

    sub-float v2, v0, v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/DragLayoutBar;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/DragLayoutBar;->mHeight:F

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 7
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mRadius:F

    neg-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayoutBar;->isUpAnimation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mDegree:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mDegree:F

    neg-float v0, v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/DragLayoutBar;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/DragLayoutBar;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 14
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mRadius:F

    neg-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    iget-object p0, p0, Lcom/android/camera/ui/DragLayoutBar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setFlatEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mFlatEnable:Z

    return-void
.end method

.method public start(I)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mFlatEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mTargetUiState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, p1, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/ui/DragLayoutBar;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    iget p0, p0, Lcom/android/camera/ui/DragLayoutBar;->mTargetUiState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string/jumbo p0, "start bar animation with invalid state {%d} , and cur target state {%d}"

    .line 5
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-eq v0, v3, :cond_3

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    .line 6
    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/DragLayoutBar;->isUpAnimation:Z

    .line 7
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mCurUiState:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v5

    .line 8
    :goto_2
    iput p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mTargetUiState:I

    .line 9
    iget-object v6, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 10
    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 11
    sget-object v6, Lcom/android/camera/ui/DragLayoutBar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancel running animation, cur process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v6, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    if-nez p1, :cond_6

    neg-float v0, v0

    goto :goto_3

    :cond_6
    move v4, v5

    .line 13
    :goto_3
    iget-object v5, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-array v6, v2, [F

    aput v0, v6, v1

    aput v4, v6, v3

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 14
    iget-object v5, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_7

    sub-float v6, v4, v0

    .line 15
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x44160000    # 600.0f

    goto :goto_4

    :cond_7
    sub-float v6, v4, v0

    .line 16
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x43480000    # 200.0f

    :goto_4
    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    .line 17
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object v5, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mFlatInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/android/camera/ui/DragLayoutBar;->mFoldInterpolator:Landroid/view/animation/Interpolator;

    :goto_5
    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    sget-object p1, Lcom/android/camera/ui/DragLayoutBar;->TAG:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/camera/ui/DragLayoutBar;->mCurUiState:I

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p0, Lcom/android/camera/ui/DragLayoutBar;->mTargetUiState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    iget-object v1, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/camera/ui/DragLayoutBar;->isUpAnimation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    const-string/jumbo v0, "start animation with states {%d} {%d} AND duration {%s} , values {%s:%s} , isUp {%s}"

    .line 21
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p0, p0, Lcom/android/camera/ui/DragLayoutBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return v3
.end method

.method public updateBgColor()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f060332

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mBgColor:I

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mAlpha:F

    .line 3
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mBgColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/DragLayoutBar;->mBgColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/DragLayoutBar;->mBgColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mBgColor:I

    .line 4
    iget v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mAlpha:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mLeftDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/camera/ui/DragLayoutBar;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/DragLayoutBar;->mRightDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/camera/ui/DragLayoutBar;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
