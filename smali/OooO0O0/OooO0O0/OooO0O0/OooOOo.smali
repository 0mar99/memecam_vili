.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic OooO00o:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOo;->OooO00o:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOo;->OooO00o:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p0, p1, p2}, Lcom/android/camera2/SessionConfig;->OooO00o(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
