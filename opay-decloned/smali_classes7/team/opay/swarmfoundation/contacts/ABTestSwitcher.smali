.class public abstract Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.super Ljava/lang/Object;
.source "ABTestSwitcher.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lteam/opay/KeepNoProguard;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0013\u0010\u000e\u001a\u0002H\u0001\"\u0004\u0008\u0001\u0010\u0001H\u0004\u00a2\u0006\u0002\u0010\u0007J\r\u0010\u000f\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "T",
        "Lteam/opay/KeepNoProguard;",
        "()V",
        "sourceData",
        "",
        "getSourceData",
        "()Ljava/lang/Object;",
        "setSourceData",
        "(Ljava/lang/Object;)V",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "featureName",
        "",
        "get",
        "getValue",
        "swarmfoundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private sourceData:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->defaultValue()Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->sourceData:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract defaultValue()Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract featureName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public final getSourceData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->sourceData:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final setSourceData(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->sourceData:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method
