.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0oO;->OooO00o:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0oO;->OooO00o:I

    invoke-static {p0}, Lcom/xiaomi/camera/mivi/MIVIParallelService$1;->OooO00o(I)V

    return-void
.end method
