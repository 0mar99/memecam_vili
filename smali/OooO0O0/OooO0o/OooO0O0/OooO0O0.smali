.class public final synthetic LOooO0O0/OooO0o/OooO0O0/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO0O0/OooO0O0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iput p2, p0, LOooO0O0/OooO0o/OooO0O0/OooO0O0;->OooO0O0:I

    iput p3, p0, LOooO0O0/OooO0o/OooO0O0/OooO0O0;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0o/OooO0O0/OooO0O0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iget v1, p0, LOooO0O0/OooO0o/OooO0O0/OooO0O0;->OooO0O0:I

    iget p0, p0, LOooO0O0/OooO0o/OooO0O0/OooO0O0;->OooO0OO:I

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/renderengine/RenderEngine;->OooO00o(II)V

    return-void
.end method
