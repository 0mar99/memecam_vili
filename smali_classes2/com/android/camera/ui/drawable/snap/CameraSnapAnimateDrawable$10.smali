.class public Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;
.super Ljava/lang/Object;
.source "CameraSnapAnimateDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

.field public final synthetic val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iput-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    iget p1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->impl2()Lcom/android/camera/protocol/protocols/AmbilightProtocol;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->onShutterAnimationEnd()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    iget-boolean p1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseAlpha:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setResult()V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->clearSegments()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    iget p1, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->reverseClock()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    iget v1, v1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    iget-boolean v0, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isClockwise:Z

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setCameraSnapPaintSecondClockWiseRunning(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRecordingReferredPaints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object v0, p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->val$animationConfig:Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    iget-boolean v3, v2, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    iput-boolean v3, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRecordingCircle:Z

    .line 4
    iget-boolean v3, v2, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRoundingCircle:Z

    iput-boolean v3, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRoundingCircle:Z

    .line 5
    iget-boolean v0, v2, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    iget-boolean v0, p1, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-eqz v0, :cond_1

    .line 6
    sget v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->ALPHA_HINT:I

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->setNeedSplit(Z)V

    .line 8
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$10;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->clearSegments()V

    :cond_1
    return-void
.end method
