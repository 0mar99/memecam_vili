.class public Lcom/android/camera/ui/MotionDetectionView$6;
.super Ljava/lang/Object;
.source "MotionDetectionView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/MotionDetectionView;->doRectAnimatorUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/MotionDetectionView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/MotionDetectionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/MotionDetectionView$6;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/MotionDetectionView$6;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/ui/MotionDetectionView;->access$602(Lcom/android/camera/ui/MotionDetectionView;F)F

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView$6;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-static {p1}, Lcom/android/camera/ui/MotionDetectionView;->access$600(Lcom/android/camera/ui/MotionDetectionView;)F

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    sub-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/android/camera/ui/MotionDetectionView;->access$702(Lcom/android/camera/ui/MotionDetectionView;F)F

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/MotionDetectionView$6;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    iget-object v0, p1, Lcom/android/camera/ui/MotionDetectionView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/MotionDetectionView;->access$700(Lcom/android/camera/ui/MotionDetectionView;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/MotionDetectionView$6;->this$0:Lcom/android/camera/ui/MotionDetectionView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
