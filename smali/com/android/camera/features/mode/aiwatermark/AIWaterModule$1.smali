.class public Lcom/android/camera/features/mode/aiwatermark/AIWaterModule$1;
.super Ljava/lang/Object;
.source "AIWaterModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->findBestWatermarkItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;

.field public final synthetic val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule$1;->this$0:Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;

    iput-object p2, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule$1;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getIWatermarkEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule$1;->this$0:Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;

    iget-object p0, p0, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule$1;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-static {v0, p0}, Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;->access$000(Lcom/android/camera/features/mode/aiwatermark/AIWaterModule;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    :cond_0
    return-void
.end method
