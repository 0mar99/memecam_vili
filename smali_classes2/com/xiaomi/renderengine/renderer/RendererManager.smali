.class public final Lcom/xiaomi/renderengine/renderer/RendererManager;
.super Ljava/lang/Object;
.source "RendererManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RendererManager"


# instance fields
.field public mAllGlobalRenderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public mAllLocalRenderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public mRenderEngine:Lcom/xiaomi/renderengine/RenderEngine;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mAllLocalRenderers:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mAllGlobalRenderers:Ljava/util/HashMap;

    .line 4
    iput-object p1, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mRenderEngine:Lcom/xiaomi/renderengine/RenderEngine;

    return-void
.end method


# virtual methods
.method public declared-synchronized clearAllRenderer()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mAllLocalRenderers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mAllGlobalRenderers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "RendererManager"

    const-string v1, "clearAllRenderer"

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mAllGlobalRenderers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/renderer/Renderer;

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v1, "RendererManager"

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance v0, Lcom/xiaomi/renderengine/renderer/ZebraRender;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/ZebraRender;-><init>()V

    goto :goto_1

    .line 3
    :pswitch_1
    new-instance v0, Lcom/xiaomi/renderengine/renderer/FocusPeakingRender;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/FocusPeakingRender;-><init>()V

    goto :goto_1

    :pswitch_2
    const-string v1, "RendererManager"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalRenderer the renderer not implemented type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :pswitch_3
    new-instance v0, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;

    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mRenderEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-direct {v0, v1}, Lcom/xiaomi/renderengine/renderer/AnimationRenderer;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    goto :goto_1

    .line 6
    :pswitch_4
    new-instance v0, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/ScreenshotRenderer;-><init>()V

    goto :goto_1

    .line 7
    :pswitch_5
    new-instance v0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mRenderEngine:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-direct {v0, v1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    goto :goto_1

    .line 8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalRenderer unsupported renderer type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/renderengine/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_0

    .line 9
    iput p1, v0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 10
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mAllGlobalRenderers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mAllLocalRenderers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/renderer/Renderer;

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v1, "RendererManager"

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance v0, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/KaleidoscopeRenderer;-><init>()V

    goto :goto_1

    .line 3
    :pswitch_1
    new-instance v0, Lcom/xiaomi/renderengine/renderer/TiltShiftParallelRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/TiltShiftParallelRenderer;-><init>()V

    goto :goto_1

    .line 4
    :pswitch_2
    new-instance v0, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/TiltShiftCircleRenderer;-><init>()V

    goto :goto_1

    .line 5
    :pswitch_3
    new-instance v0, Lcom/xiaomi/renderengine/renderer/FilterRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/FilterRenderer;-><init>()V

    goto :goto_1

    .line 6
    :pswitch_4
    new-instance v0, Lcom/xiaomi/renderengine/renderer/ColorRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/ColorRenderer;-><init>()V

    goto :goto_1

    .line 7
    :pswitch_5
    new-instance v0, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/YBlurEffectRenderer;-><init>()V

    goto :goto_1

    .line 8
    :pswitch_6
    new-instance v0, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/renderer/XBlurEffectRenderer;-><init>()V

    goto :goto_1

    :pswitch_7
    const-string v1, "RendererManager"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalRenderer the renderer not implemented type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/renderengine/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalRenderer unsupported renderer type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/renderengine/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_0

    .line 11
    iput p1, v0, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    .line 12
    iget-object v1, p0, Lcom/xiaomi/renderengine/renderer/RendererManager;->mAllLocalRenderers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
