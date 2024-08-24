.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/Ooooooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/protocols/ActionProcessing;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/protocols/ActionProcessing;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/Ooooooo;->OooO00o:Lcom/android/camera/protocol/protocols/ActionProcessing;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/Ooooooo;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/Ooooooo;->OooO00o:Lcom/android/camera/protocol/protocols/ActionProcessing;

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/Ooooooo;->OooO0O0:Z

    invoke-static {v0, p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o(Lcom/android/camera/protocol/protocols/ActionProcessing;Z)V

    return-void
.end method
