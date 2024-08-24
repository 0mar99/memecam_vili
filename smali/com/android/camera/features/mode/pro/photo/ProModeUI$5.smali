.class public Lcom/android/camera/features/mode/pro/photo/ProModeUI$5;
.super Ljava/lang/Object;
.source "ProModeUI.java"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;


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
    iput-object p1, p0, Lcom/android/camera/features/mode/pro/photo/ProModeUI$5;->this$0:Lcom/android/camera/features/mode/pro/photo/ProModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateResource()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getDisplayTitleString()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentUltraPixel()Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningUltraPixel;->getMenuDrawable()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object p0

    return-object p0
.end method
