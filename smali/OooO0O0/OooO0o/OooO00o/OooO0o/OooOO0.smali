.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0o/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooOO0;->OooO00o:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    iput p2, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooOO0;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooOO0;->OooO00o:Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;

    iget p0, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooOO0;->OooO0O0:I

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/camera/mivi/MockCameraImageReceiver;->OooO00o(ILandroid/media/ImageReader;)V

    return-void
.end method
