.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera2/MiCamera2MIVIBaseShot$1;

.field private final synthetic OooO0O0:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/MiCamera2MIVIBaseShot$1;Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0;->OooO00o:Lcom/android/camera2/MiCamera2MIVIBaseShot$1;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0;->OooO0O0:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0;->OooO00o:Lcom/android/camera2/MiCamera2MIVIBaseShot$1;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0;->OooO0O0:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    invoke-virtual {v0, p0}, Lcom/android/camera2/MiCamera2MIVIBaseShot$1;->OooO00o(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    return-void
.end method
