.class public Lcom/android/camera/aiwatermark/DragListener;
.super Ljava/lang/Object;
.source "DragListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final MOVE_TOLERANCE:F

.field public mAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

.field public mIsDragging:Z

.field public mListener:Landroid/view/View$OnClickListener;

.field public mLocation:[I

.field public mLocationLeft:F

.field public mLocationTop:F

.field public mOriginalX:F

.field public mOriginalY:F

.field public mParent:Landroid/view/View;

.field public mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/aiwatermark/DragListener;->mParent:Landroid/view/View;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 3
    iput-object v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocation:[I

    .line 4
    iput-object v0, p0, Lcom/android/camera/aiwatermark/DragListener;->mAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mIsDragging:Z

    .line 6
    iput-object v0, p0, Lcom/android/camera/aiwatermark/DragListener;->mListener:Landroid/view/View$OnClickListener;

    const v0, 0x3dcccccd    # 0.1f

    .line 7
    iput v0, p0, Lcom/android/camera/aiwatermark/DragListener;->MOVE_TOLERANCE:F

    .line 8
    iput-object p1, p0, Lcom/android/camera/aiwatermark/DragListener;->mRect:Landroid/graphics/Rect;

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/aiwatermark/DragListener;->mAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    .line 10
    iput-object p2, p0, Lcom/android/camera/aiwatermark/DragListener;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getNewLocation(Landroid/view/View;FFLandroid/graphics/Rect;)[I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocationLeft:F

    add-float/2addr v0, p2

    float-to-int p2, v0

    .line 2
    iget p0, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocationTop:F

    add-float/2addr p0, p3

    float-to-int p0, p0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, p2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    .line 5
    iget v1, p4, Landroid/graphics/Rect;->left:I

    if-gt p2, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int p3, v1, p2

    move p2, v1

    .line 7
    :cond_0
    iget v1, p4, Landroid/graphics/Rect;->top:I

    if-gt p0, v1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int v0, v1, p0

    move p0, v1

    .line 9
    :cond_1
    iget v1, p4, Landroid/graphics/Rect;->right:I

    if-lt p3, v1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int p2, v1, p2

    move p3, v1

    .line 11
    :cond_2
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p4, :cond_3

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int p0, p4, p0

    move v0, p4

    :cond_3
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/4 p4, 0x0

    aput p2, p1, p4

    const/4 p2, 0x1

    aput p0, p1, p2

    const/4 p0, 0x2

    aput p3, p1, p0

    const/4 p0, 0x3

    aput v0, p1, p0

    return-object p1
.end method

.method private updateLocation(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mOriginalX:F

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mOriginalY:F

    sub-float/2addr p1, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/android/camera/aiwatermark/DragListener;->getNewLocation(Landroid/view/View;FFLandroid/graphics/Rect;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocation:[I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mParent:Landroid/view/View;

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mParent:Landroid/view/View;

    .line 8
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/aiwatermark/DragListener;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/aiwatermark/DragListener;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/aiwatermark/DragListener;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/aiwatermark/DragListener;->mParent:Landroid/view/View;

    .line 9
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mRect:Landroid/graphics/Rect;

    .line 10
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/android/camera/aiwatermark/DragListener;->getNewLocation(Landroid/view/View;FFLandroid/graphics/Rect;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocation:[I

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocation:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-virtual {p2, v0, v2, v3, p1}, Landroid/view/View;->layout(IIII)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/aiwatermark/DragListener;->mAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    iget-object p2, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocation:[I

    iget-object v0, p0, Lcom/android/camera/aiwatermark/DragListener;->mRect:Landroid/graphics/Rect;

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->updateLocation([ILandroid/graphics/Rect;I)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/aiwatermark/DragListener;->mAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->setHasMove(Z)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/aiwatermark/DragListener;->mIsDragging:Z

    .line 3
    invoke-direct {p0, p2, p1}, Lcom/android/camera/aiwatermark/DragListener;->updateLocation(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 6
    iget v4, p0, Lcom/android/camera/aiwatermark/DragListener;->mOriginalX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/camera/aiwatermark/DragListener;->mOriginalY:F

    sub-float/2addr v3, v0

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mIsDragging:Z

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/aiwatermark/DragListener;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0, p2, p1}, Lcom/android/camera/aiwatermark/DragListener;->updateLocation(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 11
    iput-boolean v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mIsDragging:Z

    goto :goto_0

    .line 12
    :cond_3
    iget-object p0, p0, Lcom/android/camera/aiwatermark/DragListener;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/aiwatermark/DragListener;->mOriginalX:F

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/android/camera/aiwatermark/DragListener;->mOriginalY:F

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocationLeft:F

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocationTop:F

    .line 17
    iput-boolean v1, p0, Lcom/android/camera/aiwatermark/DragListener;->mIsDragging:Z

    :goto_0
    return v2
.end method

.method public reInit(Landroid/graphics/Rect;[I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/aiwatermark/DragListener;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/aiwatermark/DragListener;->mIsDragging:Z

    .line 3
    iput-object p2, p0, Lcom/android/camera/aiwatermark/DragListener;->mLocation:[I

    .line 4
    iget-object p0, p0, Lcom/android/camera/aiwatermark/DragListener;->mAIWatermark:Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    const/4 v0, -0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->updateLocation([ILandroid/graphics/Rect;I)V

    return-void
.end method
