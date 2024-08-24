.class public final synthetic LOooO0O0/OooO0o/OooO0O0/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

.field private final synthetic OooO0O0:Lcom/xiaomi/renderengine/renderer/Renderer;

.field private final synthetic OooO0OO:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;->OooO0O0:Lcom/xiaomi/renderengine/renderer/Renderer;

    iput-boolean p3, p0, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v1, p0, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;->OooO0O0:Lcom/xiaomi/renderengine/renderer/Renderer;

    iget-boolean p0, p0, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;->OooO0OO:Z

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/renderengine/RenderEngine;->OooO00o(Lcom/xiaomi/renderengine/renderer/Renderer;Z)V

    return-void
.end method
