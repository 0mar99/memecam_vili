.class public Lcom/android/camera/zoommap/ZoomMapController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/zoommap/ZoomMapController;->animatorOutMapView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/zoommap/ZoomMapController;


# direct methods
.method public constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$3;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/zoommap/ZoomMapController$3;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p0}, Lcom/android/camera/zoommap/ZoomMapController;->access$300(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/ui/GLTextureView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method
