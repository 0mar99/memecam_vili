.class public final synthetic LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/scanner/MiScanner;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/scanner/MiScanner;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0O0;->OooO00o:Lcom/android/camera/scanner/MiScanner;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0O0;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0O0;->OooO00o:Lcom/android/camera/scanner/MiScanner;

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/ooOO/OooO0O0;->OooO0O0:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/scanner/MiScanner;->OooO00o(Z)V

    return-void
.end method
