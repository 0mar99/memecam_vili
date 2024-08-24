.class public final synthetic LOooO0O0/OooO0o/OooO0O0/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;

.field private final synthetic OooO0O0:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO0O0/OooOO0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO0O0/OooOO0;->OooO0O0:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o/OooO0O0/OooOO0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;

    iget-object p0, p0, LOooO0O0/OooO0o/OooO0O0/OooOO0;->OooO0O0:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->OooO00o(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
