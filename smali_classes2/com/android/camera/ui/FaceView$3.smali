.class public Lcom/android/camera/ui/FaceView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FaceView$3;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$3;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/ui/FaceView;->access$600(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$3;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/ui/FaceView;->access$700(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/FaceView$3;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FaceView$3;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/ui/FaceView;->access$802(Lcom/android/camera/ui/FaceView;[Lcom/android/camera2/CameraHardwareFace;)[Lcom/android/camera2/CameraHardwareFace;

    return-void
.end method
