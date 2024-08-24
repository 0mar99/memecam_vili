.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field private final synthetic OooO00o:[Ljava/lang/String;

.field private final synthetic OooO0O0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO00o/OooO0O0;->OooO00o:[Ljava/lang/String;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO00o/OooO0O0;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO00o/OooO0O0;->OooO00o:[Ljava/lang/String;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO00o/OooO00o/OooO0O0;->OooO0O0:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyContrast;->OooO00o([Ljava/lang/String;Ljava/util/List;I)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    return-object p0
.end method
