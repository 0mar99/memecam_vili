.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$17;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public final arg$1:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$17;->arg$1:Ljava/util/Map;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$17;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$17;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$17;->arg$1:Ljava/util/Map;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->lambda$loadMetadata$14(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
