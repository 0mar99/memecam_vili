.class public Lcom/android/camera/features/mode/pro/video/ProVideoModeUI$1;
.super Ljava/lang/Object;
.source "ProVideoModeUI.java"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/pro/video/ProVideoModeUI$1;->this$0:Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateResource()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/features/mode/pro/video/ProVideoModeUI$1;->this$0:Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;

    invoke-static {v2}, Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;->access$100(Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08045d

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/features/mode/pro/video/ProVideoModeUI$1;->this$0:Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;

    invoke-static {p0}, Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;->access$000(Lcom/android/camera/features/mode/pro/video/ProVideoModeUI;)Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f11001f

    invoke-interface {v1, p0, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTopMenuRes(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object p0

    const v0, 0x7f1204b7

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object p0

    return-object p0
.end method
