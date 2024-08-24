.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0O0/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field private final synthetic OooO00o:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooOO0;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, LOooO0O0/OooO0o/OooO00o/OooO0O0/OooOO0;->OooO00o:Z

    check-cast p1, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    check-cast p2, Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->OooO00o(ZLcom/xiaomi/camera/core/CaptureData$CaptureDataBean;Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;)Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;

    move-result-object p0

    return-object p0
.end method
