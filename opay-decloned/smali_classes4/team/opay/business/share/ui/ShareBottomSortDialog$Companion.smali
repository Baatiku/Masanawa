.class public final Lteam/opay/business/share/ui/ShareBottomSortDialog$Companion;
.super Ljava/lang/Object;
.source "ShareBottomSortDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/share/ui/ShareBottomSortDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/business/share/ui/ShareBottomSortDialog$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "Lteam/opay/business/share/api/Business;",
        "list",
        "Lteam/opay/business/share/ui/ShareBottomSortDialog;",
        "a",
        "(Ljava/util/List;)Lteam/opay/business/share/ui/ShareBottomSortDialog;",
        "business-share_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/share/ui/ShareBottomSortDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lteam/opay/business/share/ui/ShareBottomSortDialog;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/share/api/Business;",
            ">;)",
            "Lteam/opay/business/share/ui/ShareBottomSortDialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/business/share/ui/ShareBottomSortDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/business/share/ui/ShareBottomSortDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lteam/opay/business/share/ui/ShareBottomSortDialog;->V(Lteam/opay/business/share/ui/ShareBottomSortDialog;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lteam/opay/business/share/ui/ShareBottomSortDialog;->V(Lteam/opay/business/share/ui/ShareBottomSortDialog;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
