.class public Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JpegThumbnailRunnable"
.end annotation


# instance fields
.field public mAnchorPreview:Z

.field public mHeight:I

.field public mJpegData:[B

.field public mWidth:I

.field public noGaussian:Z

.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;[BIIZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->mJpegData:[B

    .line 3
    iput p3, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->mWidth:I

    .line 4
    iput p4, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->mHeight:I

    .line 5
    iput-boolean p5, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->mAnchorPreview:Z

    .line 6
    iput-boolean p6, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->noGaussian:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JpegThumbnailRunnable run"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v3, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->mJpegData:[B

    iget v4, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->mWidth:I

    iget v5, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->mHeight:I

    iget-boolean v6, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->mAnchorPreview:Z

    iget-boolean v7, p0, Lcom/android/camera/module/Camera2Module$JpegThumbnailRunnable;->noGaussian:Z

    invoke-static/range {v2 .. v7}, Lcom/android/camera/module/Camera2Module;->access$200(Lcom/android/camera/module/Camera2Module;[BIIZZ)V

    return-void
.end method
