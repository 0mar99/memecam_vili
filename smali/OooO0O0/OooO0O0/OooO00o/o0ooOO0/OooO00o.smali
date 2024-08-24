.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/zoommap/ZoomMapController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO00o;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    return-void
.end method


# virtual methods
.method public final getShareContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooO00o;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-virtual {p0}, Lcom/android/camera/zoommap/ZoomMapController;->OooO00o()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method
