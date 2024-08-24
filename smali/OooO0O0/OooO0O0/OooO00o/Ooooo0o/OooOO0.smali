.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOO0;->OooO00o:Ljava/lang/String;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOO0;->OooO0O0:I

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOO0;->OooO0OO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOO0;->OooO00o:Ljava/lang/String;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOO0;->OooO0O0:I

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/Ooooo0o/OooOO0;->OooO0OO:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/FileLogger;->OooO0oO(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
