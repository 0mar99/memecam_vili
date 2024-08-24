.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera2/MiCamera2ShotParallel;

.field private final synthetic OooO0O0:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/MiCamera2ShotParallel;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0O;->OooO00o:Lcom/android/camera2/MiCamera2ShotParallel;

    iput-wide p2, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0O;->OooO0O0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0O;->OooO00o:Lcom/android/camera2/MiCamera2ShotParallel;

    iget-wide v1, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0O;->OooO0O0:J

    check-cast p1, Lcom/android/zxing/decoders/CacheImageDecoder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera2/MiCamera2ShotParallel;->OooO00o(JLcom/android/zxing/decoders/CacheImageDecoder;)V

    return-void
.end method
