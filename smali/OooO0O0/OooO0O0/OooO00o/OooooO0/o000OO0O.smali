.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000OO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera2/CameraCapabilities;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000OO0O;->OooO00o:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000OO0O;->OooO00o:Lcom/android/camera2/CameraCapabilities;

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {p0, p1}, Lcom/android/camera/module/VideoModule;->OooO00o(Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
