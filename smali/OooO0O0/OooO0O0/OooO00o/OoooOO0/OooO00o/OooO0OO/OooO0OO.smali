.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO0OO/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO0OO/OooO0OO;->OooO00o:Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO0OO/OooO0OO;->OooO00o:Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z

    move-result p0

    return p0
.end method
