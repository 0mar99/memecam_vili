.class public Lcom/android/camera/module/Camera2Module$1;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module;->setFrameAvailable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$1;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$1;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/Camera2Module;->mParalManager:Lcom/android/camera/module/image/hdr/ParallelManager;

    invoke-virtual {v0}, Lcom/android/camera/module/image/hdr/ParallelManager;->initParallelSession()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$1;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->access$000(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method
