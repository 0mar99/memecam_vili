.class public Lcom/android/camera/features/mode/pro/photo/ProModeUI$3;
.super Ljava/lang/Object;
.source "ProModeUI.java"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/pro/photo/ProModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/pro/photo/ProModeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/pro/photo/ProModeUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/pro/photo/ProModeUI$3;->this$0:Lcom/android/camera/features/mode/pro/photo/ProModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 2

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelTopMenuResources()[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelTopMenuResources()[I

    move-result-object p1

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelSwitchTipsString()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getUltraPixelSwitchTipsString()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method
