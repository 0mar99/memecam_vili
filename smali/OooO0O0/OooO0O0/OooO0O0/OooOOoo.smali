.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOOoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera2/SnapParam;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/SnapParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOoo;->OooO00o:Lcom/android/camera2/SnapParam;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO0O0/OooOOoo;->OooO00o:Lcom/android/camera2/SnapParam;

    invoke-static {p0, p1}, Lcom/android/camera2/SnapParamCreater;->OooO00o(Lcom/android/camera2/SnapParam;I)Z

    move-result p0

    return p0
.end method
