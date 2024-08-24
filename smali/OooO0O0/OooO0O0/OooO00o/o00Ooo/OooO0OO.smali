.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/net/Uri;

.field private final synthetic OooO0O0:[B


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0OO;->OooO00o:Landroid/net/Uri;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0OO;->OooO0O0:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0OO;->OooO00o:Landroid/net/Uri;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0OO;->OooO0O0:[B

    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-static {v0, p0, p1}, Lcom/android/camera/storage/ParallelSaveRequest;->OooO00o(Landroid/net/Uri;[BLcom/android/camera/Thumbnail;)V

    return-void
.end method
