.class public final synthetic LOooO0O0/OooO0o/OooO0O0/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/RenderEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO0O0/OooOO0o;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o/OooO0O0/OooOO0o;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    check-cast p1, Lcom/xiaomi/renderengine/renderer/Renderer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->OooO0Oo(Lcom/xiaomi/renderengine/renderer/Renderer;)V

    return-void
.end method
