.class public Lcom/android/camera/features/mode/dualcam/DualCamModeUI$3;
.super Ljava/lang/Object;
.source "DualCamModeUI.java"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/dualcam/DualCamModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/dualcam/DualCamModeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/dualcam/DualCamModeUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/dualcam/DualCamModeUI$3;->this$0:Lcom/android/camera/features/mode/dualcam/DualCamModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mode/dualcam/DualCamModeUI$3;->this$0:Lcom/android/camera/features/mode/dualcam/DualCamModeUI;

    invoke-static {p0}, Lcom/android/camera/features/mode/dualcam/DualCamModeUI;->access$000(Lcom/android/camera/features/mode/dualcam/DualCamModeUI;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    const p1, 0x7f0802f2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    const p1, 0x7f12008e

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
