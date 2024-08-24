.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0o0;->OooO00o:Ljava/lang/String;

    iput p2, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0o0;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0o0;->OooO00o:Ljava/lang/String;

    iget p0, p0, LOooO0O0/OooO0o/OooO00o/OooO0o/OooO0o0;->OooO0O0:I

    invoke-static {v0, p0}, Lcom/xiaomi/camera/mivi/MIVIParallelService$1;->OooO00o(Ljava/lang/String;I)V

    return-void
.end method
