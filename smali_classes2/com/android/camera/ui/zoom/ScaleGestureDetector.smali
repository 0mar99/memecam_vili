.class public Lcom/android/camera/ui/zoom/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/zoom/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field public mCurrSpan:F

.field public mCurrSpanX:F

.field public mCurrSpanY:F

.field public mCurrTime:J

.field public mFocusX:F

.field public mFocusY:F

.field public mInProgress:Z

.field public mInitialSpan:F

.field public final mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

.field public mMinSpan:I

.field public mPrevSpan:F

.field public mPrevSpanX:F

.field public mPrevSpanY:F

.field public mPrevTime:J

.field public mSpanSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mSpanSlop:I

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumScalingSpan()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mMinSpan:I

    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    return p0
.end method

.method public getCurrentSpanX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    return p0
.end method

.method public getCurrentSpanY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    return p0
.end method

.method public getEventTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mFocusX:F

    return p0
.end method

.method public getFocusY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mFocusY:F

    return p0
.end method

.method public getPreviousSpan()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    return p0
.end method

.method public getPreviousSpanX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanX:F

    return p0
.end method

.method public getPreviousSpanY()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanY:F

    return p0
.end method

.method public getScaleFactor()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getScaledMinimumScalingSpan()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mMinSpan:I

    return p0
.end method

.method public getTimeDelta()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    const/4 v7, 0x0

    if-eqz v2, :cond_2

    if-eqz v6, :cond_4

    .line 4
    :cond_2
    iget-boolean v8, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_3

    .line 5
    iget-object v8, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, v0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)V

    .line 6
    iput-boolean v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    .line 7
    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInitialSpan:F

    :cond_3
    if-eqz v6, :cond_4

    return v5

    :cond_4
    const/4 v6, 0x5

    const/4 v8, 0x6

    if-eqz v2, :cond_6

    if-eq v2, v8, :cond_6

    if-ne v2, v6, :cond_5

    goto :goto_2

    :cond_5
    move v9, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v9, v5

    :goto_3
    if-ne v2, v8, :cond_7

    move v10, v5

    goto :goto_4

    :cond_7
    move v10, v4

    :goto_4
    if-eqz v10, :cond_8

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    goto :goto_5

    :cond_8
    const/4 v11, -0x1

    :goto_5
    if-eqz v10, :cond_9

    add-int/lit8 v10, v3, -0x1

    goto :goto_6

    :cond_9
    move v10, v3

    :goto_6
    move v12, v4

    move v13, v7

    move v14, v13

    :goto_7
    if-ge v12, v3, :cond_b

    if-ne v11, v12, :cond_a

    goto :goto_8

    .line 9
    :cond_a
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    add-float/2addr v13, v15

    .line 10
    invoke-virtual {v1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    add-float/2addr v14, v15

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_b
    int-to-float v10, v10

    div-float/2addr v13, v10

    div-float/2addr v14, v10

    move v15, v4

    move v12, v7

    :goto_9
    if-ge v15, v3, :cond_d

    if-ne v11, v15, :cond_c

    goto :goto_a

    .line 11
    :cond_c
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    sub-float v16, v16, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v7, v7, v16

    .line 12
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    sub-float v16, v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v12, v12, v16

    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_d
    div-float/2addr v7, v10

    div-float/2addr v12, v10

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v7, v1

    mul-float/2addr v12, v1

    float-to-double v10, v7

    float-to-double v5, v12

    .line 13
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 14
    iget-boolean v6, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    .line 15
    iput v13, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mFocusX:F

    .line 16
    iput v14, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mFocusY:F

    if-eqz v6, :cond_e

    if-eqz v9, :cond_e

    .line 17
    iget-object v10, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v10, v0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)V

    .line 18
    iput-boolean v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    .line 19
    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInitialSpan:F

    :cond_e
    if-eqz v9, :cond_f

    .line 20
    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanX:F

    .line 21
    iput v12, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    iput v12, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanY:F

    .line 22
    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInitialSpan:F

    .line 23
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getScaledMinimumScalingSpan()I

    move-result v4

    .line 24
    iget-boolean v9, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    if-nez v9, :cond_11

    int-to-float v4, v4

    cmpl-float v4, v5, v4

    if-ltz v4, :cond_11

    if-nez v6, :cond_10

    iget v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInitialSpan:F

    sub-float v4, v5, v4

    .line 25
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_11

    .line 26
    :cond_10
    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanX:F

    .line 27
    iput v12, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    iput v12, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanY:F

    .line 28
    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    .line 29
    iget-wide v9, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    iput-wide v9, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevTime:J

    .line 30
    iget-object v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, v0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    :cond_11
    const/4 v4, 0x2

    if-ne v2, v4, :cond_13

    .line 31
    iput v7, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    .line 32
    iput v12, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    .line 33
    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    .line 34
    iget-boolean v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mInProgress:Z

    if-eqz v5, :cond_12

    .line 35
    iget-object v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, v0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)Z

    move-result v5

    goto :goto_b

    :cond_12
    const/4 v5, 0x1

    :goto_b
    if-eqz v5, :cond_13

    .line 36
    iget v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanX:F

    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanX:F

    .line 37
    iget v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpanY:F

    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpanY:F

    .line 38
    iget v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrSpan:F

    iput v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevSpan:F

    .line 39
    iget-wide v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mCurrTime:J

    iput-wide v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mPrevTime:J

    :cond_13
    if-ne v3, v4, :cond_14

    const/4 v5, 0x5

    if-ne v2, v5, :cond_14

    .line 40
    iget-object v5, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onDoublePointDown()Z

    :cond_14
    if-ne v3, v4, :cond_15

    if-ne v2, v8, :cond_15

    .line 41
    iget-object v0, v0, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->mListener:Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;->onDoublePointUp()Z

    :cond_15
    const/4 v0, 0x1

    return v0
.end method
