.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/storage/ImageSaveRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/storage/ImageSaveRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO00o;->OooO00o:Lcom/android/camera/storage/ImageSaveRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO00o;->OooO00o:Lcom/android/camera/storage/ImageSaveRequest;

    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/android/camera/storage/ImageSaveRequest;->OooO00o(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
