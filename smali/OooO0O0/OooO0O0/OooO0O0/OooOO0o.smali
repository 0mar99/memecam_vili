.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/engine/BufferFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0o;->OooO00o:Lcom/xiaomi/engine/BufferFormat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOO0o;->OooO00o:Lcom/xiaomi/engine/BufferFormat;

    invoke-static {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->OooO0OO(Lcom/xiaomi/engine/BufferFormat;)V

    return-void
.end method
