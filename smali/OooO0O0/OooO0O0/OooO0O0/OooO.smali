.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera2/MiCamera2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/OooO;->OooO00o:Lcom/android/camera2/MiCamera2;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0O0/OooO;->OooO00o:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->OooO0o0(Landroid/media/ImageReader;)V

    return-void
.end method
