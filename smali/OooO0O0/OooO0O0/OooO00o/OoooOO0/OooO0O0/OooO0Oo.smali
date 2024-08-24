.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO0O0/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO0O0/OooO0Oo;->OooO00o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/OooO0O0/OooO0Oo;->OooO00o:Ljava/lang/String;

    check-cast p1, Lcom/android/camera/multi/PluginInfo;

    invoke-static {p0, p1}, Lcom/android/camera/data/observeable/VMResource;->OooO00o(Ljava/lang/String;Lcom/android/camera/multi/PluginInfo;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method
