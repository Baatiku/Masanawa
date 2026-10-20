.class public final Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "IndustryRecommendAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0006\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lgwd;",
        "binding",
        "<init>",
        "(Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter;Lgwd;)V",
        "a",
        "Lgwd;",
        "()Lgwd;",
        "business-sme-store_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lgwd;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter;Lgwd;)V
    .locals 1
    .param p1    # Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgwd;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter$ViewHolder;->b:Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Lgwd;->a()Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter$ViewHolder;->a:Lgwd;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lgwd;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/IndustryRecommendAdapter$ViewHolder;->a:Lgwd;

    .line 2
    .line 3
    return-object v0
.end method
