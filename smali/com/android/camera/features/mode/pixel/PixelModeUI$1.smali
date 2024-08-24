.class public Lcom/android/camera/features/mode/pixel/PixelModeUI$1;
.super Ljava/lang/Object;
.source "PixelModeUI.java"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/pixel/PixelModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/pixel/PixelModeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/pixel/PixelModeUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/pixel/PixelModeUI$1;->this$0:Lcom/android/camera/features/mode/pixel/PixelModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    iget-object v0, p0, Lcom/android/camera/features/mode/pixel/PixelModeUI$1;->this$0:Lcom/android/camera/features/mode/pixel/PixelModeUI;

    .line 2
    invoke-static {v0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->access$100(Lcom/android/camera/features/mode/pixel/PixelModeUI;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mode/pixel/PixelModeUI$1;->this$0:Lcom/android/camera/features/mode/pixel/PixelModeUI;

    .line 3
    invoke-static {v0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->access$100(Lcom/android/camera/features/mode/pixel/PixelModeUI;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/features/mode/pixel/PixelModeUI$1;->this$0:Lcom/android/camera/features/mode/pixel/PixelModeUI;

    .line 5
    invoke-static {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->access$000(Lcom/android/camera/features/mode/pixel/PixelModeUI;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method
