.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000000O/OooO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/multi/PluginInfo;

    invoke-static {p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->OooO00o(Lcom/android/camera/multi/PluginInfo;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method
