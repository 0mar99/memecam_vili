.class public final synthetic LOooO0O0/OooO0o/OooO0O0/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

.field private final synthetic OooO0O0:Lcom/xiaomi/renderengine/renderer/Renderer;

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO0O0/OooOOO0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO0O0/OooOOO0;->OooO0O0:Lcom/xiaomi/renderengine/renderer/Renderer;

    iput p3, p0, LOooO0O0/OooO0o/OooO0O0/OooOOO0;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0o/OooO0O0/OooOOO0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v1, p0, LOooO0O0/OooO0o/OooO0O0/OooOOO0;->OooO0O0:Lcom/xiaomi/renderengine/renderer/Renderer;

    iget p0, p0, LOooO0O0/OooO0o/OooO0O0/OooOOO0;->OooO0OO:I

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/renderengine/RenderEngine;->OooO0O0(Lcom/xiaomi/renderengine/renderer/Renderer;I)V

    return-void
.end method
