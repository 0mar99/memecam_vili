.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooOOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/data/data/global/DataItemGlobal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO00o:Lcom/android/camera/data/data/global/DataItemGlobal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooOOOo;->OooO00o:Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-static {p0}, Lcom/android/camera/CameraAppImpl;->OooO00o(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    return-void
.end method
