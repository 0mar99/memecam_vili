.class public final synthetic LOooO0O0/OooO0o/OooO0O0/OooOOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

.field private final synthetic OooO0O0:Lcom/xiaomi/renderengine/renderer/Renderer;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO0O0/OooOOo0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO0O0/OooOOo0;->OooO0O0:Lcom/xiaomi/renderengine/renderer/Renderer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o/OooO0O0/OooOOo0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object p0, p0, LOooO0O0/OooO0o/OooO0O0/OooOOo0;->OooO0O0:Lcom/xiaomi/renderengine/renderer/Renderer;

    invoke-virtual {v0, p0}, Lcom/xiaomi/renderengine/RenderEngine;->OooO00o(Lcom/xiaomi/renderengine/renderer/Renderer;)V

    return-void
.end method
