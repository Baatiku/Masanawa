.class public final Lcom/opay/team/newhome/viewmodel/NewPayViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "NewPayViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/viewmodel/NewPayViewModel$Companion;,
        Lcom/opay/team/newhome/viewmodel/NewPayViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008.\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 n2\u00020\u00012\u00020\u0002:\u0002\u0096\u0002B\u0019\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u000b\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0018\u00010\u0008H\u0082@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\u000e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\'\u0010 \u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008 \u0010!J%\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008$\u0010%J-\u0010*\u001a\u0008\u0012\u0004\u0012\u00020#0\u00132\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u00132\u0006\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008*\u0010+J/\u0010/\u001a\u00020(2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0008\u0010-\u001a\u0004\u0018\u00010#2\u0006\u0010.\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020#H\u0002\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020#H\u0002\u00a2\u0006\u0004\u00083\u00102J!\u00107\u001a\u0004\u0018\u00010#2\u0006\u00104\u001a\u00020(2\u0006\u00106\u001a\u000205H\u0002\u00a2\u0006\u0004\u00087\u00108J\u0019\u0010;\u001a\u00020\u000e2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\'\u0010A\u001a\u0012\u0012\u0004\u0012\u00020?0>j\u0008\u0012\u0004\u0012\u00020?`@2\u0006\u0010=\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u0019\u0010E\u001a\u00020\u000e2\u0008\u0010D\u001a\u0004\u0018\u00010CH\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u0017\u0010G\u001a\u00020C2\u0006\u0010=\u001a\u00020CH\u0002\u00a2\u0006\u0004\u0008G\u0010HJ)\u0010N\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020I2\u0012\u0010M\u001a\u000e\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u00020\u000e0K\u00a2\u0006\u0004\u0008N\u0010OJ\u0015\u0010P\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020I\u00a2\u0006\u0004\u0008P\u0010QJ\u001d\u0010R\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020I2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008R\u0010SJ\u001d\u0010V\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020I2\u0006\u0010U\u001a\u00020T\u00a2\u0006\u0004\u0008V\u0010WJ\u001b\u0010X\u001a\u00020(2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020#0\"\u00a2\u0006\u0004\u0008X\u0010YJ\u001b\u0010Z\u001a\u00020(2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020#0\"\u00a2\u0006\u0004\u0008Z\u0010YJ\u001d\u0010]\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020I2\u0006\u0010\\\u001a\u00020[\u00a2\u0006\u0004\u0008]\u0010^J\u000f\u0010_\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008_\u0010\u0012J\u0015\u0010`\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020I\u00a2\u0006\u0004\u0008`\u0010QJ\u001d\u0010c\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020I2\u0006\u0010b\u001a\u00020a\u00a2\u0006\u0004\u0008c\u0010dJ\u0015\u0010e\u001a\u00020\u000e2\u0006\u0010b\u001a\u00020?\u00a2\u0006\u0004\u0008e\u0010fJ\u001d\u0010i\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020I2\u0006\u0010h\u001a\u00020g\u00a2\u0006\u0004\u0008i\u0010jJ+\u0010n\u001a\u0004\u0018\u0001092\u0008\u0010k\u001a\u0004\u0018\u0001092\u0006\u0010l\u001a\u00020?2\u0008\u0010m\u001a\u0004\u0018\u00010g\u00a2\u0006\u0004\u0008n\u0010oJ\u001c\u0010q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020p0\t0\u0008H\u0086@\u00a2\u0006\u0004\u0008q\u0010\u000cR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u001d\u0010{\u001a\u0008\u0012\u0004\u0012\u00020\u001a0v8\u0006\u00a2\u0006\u000c\n\u0004\u0008w\u0010x\u001a\u0004\u0008y\u0010zR\u001d\u0010~\u001a\u0008\u0012\u0004\u0012\u00020\u001c0v8\u0006\u00a2\u0006\u000c\n\u0004\u0008|\u0010x\u001a\u0004\u0008}\u0010zR%\u0010\u0081\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\"0v8\u0006\u00a2\u0006\r\n\u0004\u0008\u007f\u0010x\u001a\u0005\u0008\u0080\u0001\u0010zR \u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001c0v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0082\u0001\u0010x\u001a\u0005\u0008\u0083\u0001\u0010zR#\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00020\u001c0\u0085\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008d\u0001\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u001c\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0091\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001R(\u0010\u009a\u0001\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0095\u0001\u0010\u0015\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001\"\u0006\u0008\u0098\u0001\u0010\u0099\u0001R(\u0010\u009c\u0001\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u009b\u0001\u0010\u0015\u001a\u0006\u0008\u009c\u0001\u0010\u0097\u0001\"\u0006\u0008\u009d\u0001\u0010\u0099\u0001R\u001b\u0010\u009f\u0001\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u008c\u0001R(\u0010\u00a3\u0001\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u00a0\u0001\u0010\u0015\u001a\u0006\u0008\u00a1\u0001\u0010\u0097\u0001\"\u0006\u0008\u00a2\u0001\u0010\u0099\u0001R#\u0010\u00a6\u0001\u001a\t\u0012\u0004\u0012\u00020C0\u0085\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a4\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u00a5\u0001\u0010\u0089\u0001R*\u0010\u00ac\u0001\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\u001a\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001\"\u0005\u0008\u00ab\u0001\u0010FR*\u0010\u00b2\u0001\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\"\u0005\u0008\u00b1\u0001\u0010<R+\u0010\u00b9\u0001\u001a\u0004\u0018\u00010T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001\u001a\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001\"\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R#\u0010\u00bc\u0001\u001a\t\u0012\u0004\u0012\u00020\u000e0\u0085\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00ba\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u00bb\u0001\u0010\u0089\u0001R#\u0010\u00bf\u0001\u001a\t\u0012\u0004\u0012\u00020#0\u0085\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00bd\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u0089\u0001R!\u0010\u00c5\u0001\u001a\u00030\u00c0\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001\u001a\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001R \u0010\u00c8\u0001\u001a\u0008\u0012\u0004\u0012\u00020[0v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00c6\u0001\u0010x\u001a\u0005\u0008\u00c7\u0001\u0010zR \u0010\u00cb\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001c0v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00c9\u0001\u0010x\u001a\u0005\u0008\u00ca\u0001\u0010zR \u0010\u00ce\u0001\u001a\u0008\u0012\u0004\u0012\u0002090v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00cc\u0001\u0010x\u001a\u0005\u0008\u00cd\u0001\u0010zR-\u0010\u00d2\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020g0\u00cf\u00010v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00d0\u0001\u0010x\u001a\u0005\u0008\u00d1\u0001\u0010zR \u0010\u00d5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000e0v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00d3\u0001\u0010x\u001a\u0005\u0008\u00d4\u0001\u0010zR-\u0010\u00d8\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020g0\u00cf\u00010v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00d6\u0001\u0010x\u001a\u0005\u0008\u00d7\u0001\u0010zR-\u0010\u00db\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020a0\u00cf\u00010v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00d9\u0001\u0010x\u001a\u0005\u0008\u00da\u0001\u0010zR \u0010\u00de\u0001\u001a\u0008\u0012\u0004\u0012\u00020a0v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00dc\u0001\u0010x\u001a\u0005\u0008\u00dd\u0001\u0010zR \u0010\u00e1\u0001\u001a\u0008\u0012\u0004\u0012\u00020?0v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00df\u0001\u0010x\u001a\u0005\u0008\u00e0\u0001\u0010zR \u0010\u00e4\u0001\u001a\u0008\u0012\u0004\u0012\u00020g0v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00e2\u0001\u0010x\u001a\u0005\u0008\u00e3\u0001\u0010zR+\u0010\u00eb\u0001\u001a\u0004\u0018\u00010p8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00e5\u0001\u0010\u00e6\u0001\u001a\u0006\u0008\u00e7\u0001\u0010\u00e8\u0001\"\u0006\u0008\u00e9\u0001\u0010\u00ea\u0001R!\u0010\u00f0\u0001\u001a\u00030\u00ec\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ed\u0001\u0010\u00c2\u0001\u001a\u0006\u0008\u00ee\u0001\u0010\u00ef\u0001R!\u0010\u00f5\u0001\u001a\u00030\u00f1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00f2\u0001\u0010\u00c2\u0001\u001a\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001R!\u0010\u00fa\u0001\u001a\u00030\u00f6\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00f7\u0001\u0010\u00c2\u0001\u001a\u0006\u0008\u00f8\u0001\u0010\u00f9\u0001R\u001c\u0010\u00fe\u0001\u001a\u0005\u0018\u00010\u00fb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0001\u0010\u00fd\u0001R(\u0010\u0082\u0002\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u00ff\u0001\u0010\u0015\u001a\u0006\u0008\u0080\u0002\u0010\u0097\u0001\"\u0006\u0008\u0081\u0002\u0010\u0099\u0001R!\u0010\u0086\u0002\u001a\t\u0012\u0005\u0012\u00030\u0083\u00020v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0084\u0002\u0010x\u001a\u0005\u0008\u0085\u0002\u0010zR-\u0010\u0089\u0002\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020a0\u00cf\u00010v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0087\u0002\u0010x\u001a\u0005\u0008\u0088\u0002\u0010zR \u0010\u008c\u0002\u001a\u0008\u0012\u0004\u0012\u00020T0v8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008a\u0002\u0010x\u001a\u0005\u0008\u008b\u0002\u0010zR\u0018\u0010\u008f\u0002\u001a\u00030\u008d\u00028\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u00a0\u0001\u0010\u008e\u0002R\u0018\u0010\u0092\u0002\u001a\u00030\u0090\u00028\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u00a4\u0001\u0010\u0091\u0002R\u001a\u0010\u0095\u0002\u001a\u0005\u0018\u00010\u0093\u00028\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u009b\u0001\u0010\u0094\u0002\u00a8\u0006\u0097\u0002"
    }
    d2 = {
        "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "app",
        "sessionProvider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/api/e;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/graphql/HomeBalance;",
        "d0",
        "(Ljr2;)Ljava/lang/Object;",
        "res",
        "",
        "K0",
        "(Lteam/opay/core/android/arch/Resource;)V",
        "L0",
        "()V",
        "",
        "Lteam/opay/odialog/net/AdDataItem;",
        "Z",
        "()Ljava/util/List;",
        "result",
        "M0",
        "(Lteam/opay/core/api/graphql/HomeBalance;)V",
        "Lcom/opay/team/newhome/bean/NewPayData;",
        "newPayData",
        "",
        "cache",
        "Landroid/content/Context;",
        "context",
        "W0",
        "(Lcom/opay/team/newhome/bean/NewPayData;ZLandroid/content/Context;)V",
        "",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "l1",
        "(Lcom/opay/team/newhome/bean/NewPayData;Z)Ljava/util/List;",
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "bannerList",
        "",
        "bannerType",
        "a0",
        "(Ljava/util/List;I)Ljava/util/List;",
        "list",
        "upperItem",
        "currentItem",
        "N0",
        "(Ljava/util/List;Lcom/opay/team/newhome/home/bean/HomeData;Lcom/opay/team/newhome/home/bean/HomeData;)I",
        "i0",
        "()Lcom/opay/team/newhome/home/bean/HomeData;",
        "h0",
        "index",
        "Lcom/opay/team/newhome/bean/CommonPayData;",
        "commonPayData",
        "g0",
        "(ILcom/opay/team/newhome/bean/CommonPayData;)Lcom/opay/team/newhome/home/bean/HomeData;",
        "Lcom/opay/team/newhome/reward/SecurityFeel;",
        "securityFeel",
        "V0",
        "(Lcom/opay/team/newhome/reward/SecurityFeel;)V",
        "rsp",
        "Ljava/util/ArrayList;",
        "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
        "Lkotlin/collections/ArrayList;",
        "X",
        "(Lcom/opay/team/newhome/reward/SecurityFeel;)Ljava/util/ArrayList;",
        "Lcom/opay/team/newhome/reward/HomeKBoxRsp;",
        "kbox",
        "U0",
        "(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)V",
        "k1",
        "(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)Lcom/opay/team/newhome/reward/HomeKBoxRsp;",
        "Lag8;",
        "lifecycleOwner",
        "Lkotlin/Function1;",
        "Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
        "block",
        "t0",
        "(Lag8;Lkotlin/jvm/functions/Function1;)V",
        "U",
        "(Lag8;)V",
        "W",
        "(Lag8;Landroid/content/Context;)V",
        "",
        "deleteCode",
        "Q",
        "(Lag8;Ljava/lang/String;)V",
        "O0",
        "(Ljava/util/List;)I",
        "P0",
        "Lcom/opay/team/newhome/reward/HomeRewardsReq;",
        "req",
        "V",
        "(Lag8;Lcom/opay/team/newhome/reward/HomeRewardsReq;)V",
        "onCleared",
        "S",
        "Lcom/opay/team/newhome/reward/WidgetModule;",
        "item",
        "S0",
        "(Lag8;Lcom/opay/team/newhome/reward/WidgetModule;)V",
        "Z0",
        "(Lcom/opay/team/newhome/reward/SecurityOptionContent;)V",
        "",
        "widgetId",
        "X0",
        "(Lag8;J)V",
        "security",
        "selected",
        "participatePeopleNum",
        "P",
        "(Lcom/opay/team/newhome/reward/SecurityFeel;Lcom/opay/team/newhome/reward/SecurityOptionContent;Ljava/lang/Long;)Lcom/opay/team/newhome/reward/SecurityFeel;",
        "Lteam/opay/pay/transaction/LastTransactionList;",
        "R0",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/core/api/e;",
        "Landroidx/lifecycle/MutableLiveData;",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "o0",
        "()Landroidx/lifecycle/MutableLiveData;",
        "newPayDataSuccessEvent",
        "e",
        "b0",
        "deleteHomeBannerEvent",
        "f",
        "n0",
        "newPayDataEvent",
        "g",
        "w0",
        "refreshDataEvent",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "h",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "v0",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "refreshConfigEvent",
        "i",
        "Lcom/opay/team/newhome/home/bean/HomeData;",
        "recommendActivity",
        "j",
        "Lteam/opay/core/api/graphql/HomeBalance;",
        "homeBalance",
        "Lcom/opay/team/newhome/home/bean/AmountError;",
        "k",
        "Lcom/opay/team/newhome/home/bean/AmountError;",
        "homeBalanceAmountError",
        "l",
        "k0",
        "()Z",
        "d1",
        "(Z)V",
        "kyc1IsFinish",
        "m",
        "isRefreshConfig",
        "f1",
        "n",
        "lastBannerItem",
        "o",
        "c0",
        "b1",
        "firstVisible",
        "p",
        "A0",
        "rewardsHomeComponentEvent",
        "q",
        "Lcom/opay/team/newhome/reward/HomeKBoxRsp;",
        "z0",
        "()Lcom/opay/team/newhome/reward/HomeKBoxRsp;",
        "g1",
        "rewardsHomeComponent",
        "r",
        "Lcom/opay/team/newhome/reward/SecurityFeel;",
        "C0",
        "()Lcom/opay/team/newhome/reward/SecurityFeel;",
        "h1",
        "securityComponent",
        "s",
        "Ljava/lang/String;",
        "G0",
        "()Ljava/lang/String;",
        "i1",
        "(Ljava/lang/String;)V",
        "selectOptionName",
        "t",
        "y0",
        "rewardsComponentRemoveEvent",
        "u",
        "u0",
        "refreshBalanceEvent",
        "Lteam/opay/core/settings/SettingsStorage;",
        "v",
        "Lid8;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "w",
        "x0",
        "refreshHomeRewardsEvent",
        "x",
        "D0",
        "securityLoadingEvent",
        "y",
        "F0",
        "securitySuccessEvent",
        "Lkotlin/Pair;",
        "z",
        "E0",
        "securitySubmitSuccessEvent",
        "A",
        "B0",
        "securityCloseSuccessEvent",
        "B",
        "j0",
        "kboxReportEvent",
        "C",
        "p0",
        "onKboxButtonClickEvent",
        "D",
        "q0",
        "onKboxStyle3ClickEvent",
        "E",
        "r0",
        "onSecurityItemClick",
        "F",
        "s0",
        "onSecurityItemCloseClick",
        "G",
        "Lteam/opay/pay/transaction/LastTransactionList;",
        "l0",
        "()Lteam/opay/pay/transaction/LastTransactionList;",
        "e1",
        "(Lteam/opay/pay/transaction/LastTransactionList;)V",
        "lastBills",
        "Lxt;",
        "H",
        "Y",
        "()Lxt;",
        "api",
        "Lcom/opay/team/home/api/HomeApiService$b;",
        "I",
        "f0",
        "()Lcom/opay/team/home/api/HomeApiService$b;",
        "homeApi",
        "Lfv;",
        "J",
        "H0",
        "()Lfv;",
        "serviceApi",
        "Lkotlinx/coroutines/l;",
        "K",
        "Lkotlinx/coroutines/l;",
        "homeBalanceScope",
        "L",
        "Q0",
        "c1",
        "isHomeRewardsLoading",
        "Lteam/opay/pay/onboarding/GuideResponse;",
        "M",
        "e0",
        "guideSuccessEvent",
        "N",
        "m0",
        "manualVoucherLoadingEvent",
        "O",
        "I0",
        "toastEvent",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final P:Lcom/opay/team/newhome/viewmodel/NewPayViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Q:Ljava/lang/String;

.field public static R:Z


# instance fields
.field public final A:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final C:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final E:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public G:Lteam/opay/pay/transaction/LastTransactionList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final H:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final I:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public K:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public L:Z

.field public final M:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/onboarding/GuideResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final N:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final O:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/bean/NewPayData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/opay/team/newhome/home/bean/HomeData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lteam/opay/core/api/graphql/HomeBalance;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/opay/team/newhome/home/bean/AmountError;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:Lcom/opay/team/newhome/home/bean/HomeData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Z

.field public final p:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/reward/HomeKBoxRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lcom/opay/team/newhome/reward/HomeKBoxRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Lcom/opay/team/newhome/reward/SecurityFeel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/reward/HomeRewardsReq;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/reward/SecurityFeel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->P:Lcom/opay/team/newhome/viewmodel/NewPayViewModel$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->Q:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->R:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/api/e;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->b:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->c:Lteam/opay/core/api/e;

    .line 17
    .line 18
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 47
    .line 48
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->h:Lteam/opay/pay/util/SingleLiveEvent;

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->l:Z

    .line 55
    .line 56
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->o:Z

    .line 57
    .line 58
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 59
    .line 60
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->p:Lteam/opay/pay/util/SingleLiveEvent;

    .line 64
    .line 65
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 66
    .line 67
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->t:Lteam/opay/pay/util/SingleLiveEvent;

    .line 71
    .line 72
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 73
    .line 74
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->u:Lteam/opay/pay/util/SingleLiveEvent;

    .line 78
    .line 79
    new-instance p1, Lus9;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Lus9;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->v:Lid8;

    .line 89
    .line 90
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 91
    .line 92
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 98
    .line 99
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 105
    .line 106
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 110
    .line 111
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 112
    .line 113
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 117
    .line 118
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 119
    .line 120
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 124
    .line 125
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 126
    .line 127
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->B:Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 133
    .line 134
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->C:Landroidx/lifecycle/MutableLiveData;

    .line 138
    .line 139
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 140
    .line 141
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->D:Landroidx/lifecycle/MutableLiveData;

    .line 145
    .line 146
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 147
    .line 148
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->E:Landroidx/lifecycle/MutableLiveData;

    .line 152
    .line 153
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 154
    .line 155
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->F:Landroidx/lifecycle/MutableLiveData;

    .line 159
    .line 160
    new-instance p1, Lvs9;

    .line 161
    .line 162
    invoke-direct {p1, p0}, Lvs9;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->H:Lid8;

    .line 170
    .line 171
    new-instance p1, Lws9;

    .line 172
    .line 173
    invoke-direct {p1, p0}, Lws9;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->I:Lid8;

    .line 181
    .line 182
    new-instance p1, Lxs9;

    .line 183
    .line 184
    invoke-direct {p1, p0}, Lxs9;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V

    .line 185
    .line 186
    .line 187
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->J:Lid8;

    .line 192
    .line 193
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 194
    .line 195
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    .line 199
    .line 200
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 201
    .line 202
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    .line 206
    .line 207
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 208
    .line 209
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 210
    .line 211
    .line 212
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    .line 213
    .line 214
    return-void
.end method

.method public static final synthetic A()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->R:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic B(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->d0(Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic C(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lcom/opay/team/home/api/HomeApiService$b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->f0()Lcom/opay/team/home/api/HomeApiService$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lfv;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->H0()Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->Q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic F(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->K0(Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->L0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/api/graphql/HomeBalance;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->M0(Lteam/opay/core/api/graphql/HomeBalance;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeKBoxRsp;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->U0(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/SecurityFeel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->V0(Lcom/opay/team/newhome/reward/SecurityFeel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final J0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lcom/opay/team/home/api/HomeApiService$b;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    const-class v1, Lcom/opay/team/home/api/HomeApiService$b;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/opay/team/home/api/HomeApiService$b;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final synthetic K(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/bean/NewPayData;ZLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->W0(Lcom/opay/team/newhome/bean/NewPayData;ZLandroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->R:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic M(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeKBoxRsp;)Lcom/opay/team/newhome/reward/HomeKBoxRsp;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->k1(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final M0(Lteam/opay/core/api/graphql/HomeBalance;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->j:Lteam/opay/core/api/graphql/HomeBalance;

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->k:Lcom/opay/team/newhome/home/bean/AmountError;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object v1, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->j:Lteam/opay/core/api/graphql/HomeBalance;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->k:Lcom/opay/team/newhome/home/bean/AmountError;

    .line 24
    .line 25
    sget-object v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->Q:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "TAG"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->u:Lteam/opay/pay/util/SingleLiveEvent;

    .line 33
    .line 34
    iget-object v8, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->j:Lteam/opay/core/api/graphql/HomeBalance;

    .line 35
    .line 36
    iget-object v10, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->k:Lcom/opay/team/newhome/home/bean/AmountError;

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->Z()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    new-instance v15, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 43
    .line 44
    const/16 v16, 0xf1e

    .line 45
    .line 46
    const/16 v17, 0x0

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    move-object v2, v15

    .line 58
    move-object/from16 v18, v15

    .line 59
    .line 60
    move/from16 v15, v16

    .line 61
    .line 62
    move-object/from16 v16, v17

    .line 63
    .line 64
    invoke-direct/range {v2 .. v16}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    move-object/from16 v2, v18

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public static final synthetic N(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/bean/NewPayData;Z)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->l1(Lcom/opay/team/newhome/bean/NewPayData;Z)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lxt;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final R(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    if-eq v0, p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 31
    .line 32
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p0
.end method

.method public static final T(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lteam/opay/pay/onboarding/GuideResponse;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final T0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/WidgetModule;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v1, Lkotlin/Pair;

    .line 9
    .line 10
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$a;->a:[I

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    aget p1, v0, p1

    .line 35
    .line 36
    const-string v0, ""

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eq p1, v1, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    if-eq p1, v1, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object v0, p1

    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lteam/opay/pay/api/GetVouchersResult;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/pay/api/GetVouchersResult;->b()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-object p1, v2

    .line 77
    :goto_1
    const-string v3, "1"

    .line 78
    .line 79
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_7

    .line 84
    .line 85
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lteam/opay/pay/api/GetVouchersResult;

    .line 92
    .line 93
    if-eqz p2, :cond_5

    .line 94
    .line 95
    invoke-virtual {p2}, Lteam/opay/pay/api/GetVouchersResult;->a()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :cond_5
    if-nez v2, :cond_6

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    move-object v0, v2

    .line 103
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_7
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    .line 108
    .line 109
    sget p2, Lteam/opay/pay/R$string;->osdk_kbox_voucher_success:I

    .line 110
    .line 111
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :goto_3
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 119
    .line 120
    new-instance p1, Lcom/opay/team/newhome/reward/HomeRewardsReq;

    .line 121
    .line 122
    const/4 p2, 0x0

    .line 123
    invoke-direct {p1, v1, p2}, Lcom/opay/team/newhome/reward/HomeRewardsReq;-><init>(ZZ)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p0
.end method

.method private final Y()Lxt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->H:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxt;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final Y0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const-string p1, ""

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->r:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0
.end method

.method public static final a1(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lfv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    const-class v1, Lfv;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lfv;

    .line 12
    .line 13
    return-object p0
.end method

.method private final f0()Lcom/opay/team/home/api/HomeApiService$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->I:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/home/api/HomeApiService$b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final j1(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static synthetic r(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->j1(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lfv;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->a1(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/WidgetModule;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->T0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/WidgetModule;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lcom/opay/team/home/api/HomeApiService$b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->J0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lcom/opay/team/home/api/HomeApiService$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->R(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lxt;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->O(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lxt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->Y0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->T(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lxt;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->Y()Lxt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final A0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/reward/HomeKBoxRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->p:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C0()Lcom/opay/team/newhome/reward/SecurityFeel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->r:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/reward/SecurityFeel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H0()Lfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->J:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfv;

    .line 8
    .line 9
    return-object v0
.end method

.method public final I0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K0(Lteam/opay/core/android/arch/Resource;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/HomeBalance;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->j:Lteam/opay/core/api/graphql/HomeBalance;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->k:Lcom/opay/team/newhome/home/bean/AmountError;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->j:Lteam/opay/core/api/graphql/HomeBalance;

    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Lgmf;->a(Lteam/opay/core/android/arch/Resource;)Lcom/opay/team/newhome/home/bean/AmountError;

    .line 16
    .line 17
    .line 18
    move-result-object v10

    .line 19
    iput-object v10, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->k:Lcom/opay/team/newhome/home/bean/AmountError;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->u:Lteam/opay/pay/util/SingleLiveEvent;

    .line 22
    .line 23
    iget-object v8, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->j:Lteam/opay/core/api/graphql/HomeBalance;

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->Z()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    new-instance v15, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 30
    .line 31
    const/16 v16, 0xf1e

    .line 32
    .line 33
    const/16 v17, 0x0

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v14, 0x0

    .line 44
    move-object v2, v15

    .line 45
    move-object/from16 v18, v15

    .line 46
    .line 47
    move/from16 v15, v16

    .line 48
    .line 49
    move-object/from16 v16, v17

    .line 50
    .line 51
    invoke-direct/range {v2 .. v16}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v2, v18

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final L0()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->u:Lteam/opay/pay/util/SingleLiveEvent;

    .line 4
    .line 5
    new-instance v15, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 6
    .line 7
    const/16 v16, 0xffe

    .line 8
    .line 9
    const/16 v17, 0x0

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    move-object v2, v15

    .line 24
    move-object/from16 v18, v15

    .line 25
    .line 26
    move/from16 v15, v16

    .line 27
    .line 28
    move-object/from16 v16, v17

    .line 29
    .line 30
    invoke-direct/range {v2 .. v16}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v2, v18

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final N0(Ljava/util/List;Lcom/opay/team/newhome/home/bean/HomeData;Lcom/opay/team/newhome/home/bean/HomeData;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ")I"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-lez p2, :cond_1

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p2, -0x1

    .line 24
    :goto_0
    return p2
.end method

.method public final O0(Ljava/util/List;)I
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->Companion:Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->q:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->h0()Lcom/opay/team/newhome/home/bean/HomeData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v3, v2

    .line 38
    check-cast v3, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x5

    .line 45
    if-ne v3, v4, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v2, 0x0

    .line 49
    :goto_0
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 50
    .line 51
    invoke-virtual {p0, p1, v2, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->N0(Ljava/util/List;Lcom/opay/team/newhome/home/bean/HomeData;Lcom/opay/team/newhome/home/bean/HomeData;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_3
    :goto_1
    const/4 p1, -0x1

    .line 57
    return p1
.end method

.method public final P(Lcom/opay/team/newhome/reward/SecurityFeel;Lcom/opay/team/newhome/reward/SecurityOptionContent;Ljava/lang/Long;)Lcom/opay/team/newhome/reward/SecurityFeel;
    .locals 5
    .param p1    # Lcom/opay/team/newhome/reward/SecurityFeel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/SecurityOptionContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "selected"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p1, p3}, Lcom/opay/team/newhome/reward/SecurityFeel;->l(Ljava/lang/Long;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    invoke-virtual {p3}, Lcom/opay/team/newhome/reward/SecurityQuestion;->c()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    move-object v0, p3

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    const/4 v1, 0x1

    .line 47
    if-eqz p3, :cond_3

    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/opay/team/newhome/reward/SecurityQuestion;->g()Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-ne p3, v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->k()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/SecurityFeel;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    if-eqz p3, :cond_7

    .line 68
    .line 69
    invoke-virtual {p3}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    if-eqz p3, :cond_7

    .line 74
    .line 75
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_7

    .line 84
    .line 85
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->y(Ljava/lang/Integer;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    const/4 v3, 0x2

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->y(Ljava/lang/Integer;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->y(Ljava/lang/Integer;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_6
    const/4 v3, 0x3

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->y(Ljava/lang/Integer;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_7
    :goto_1
    return-object p1
.end method

.method public final P0(Ljava/util/List;)I
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->Companion:Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_8

    .line 13
    .line 14
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->r:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->i0()Lcom/opay/team/newhome/home/bean/HomeData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move-object v4, v2

    .line 39
    check-cast v4, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x5

    .line 46
    if-ne v4, v5, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v2, v3

    .line 50
    :goto_0
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_5

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    move-object v5, v4

    .line 67
    check-cast v5, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/16 v7, 0xc

    .line 74
    .line 75
    if-eq v6, v7, :cond_4

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    const/16 v6, 0x13

    .line 82
    .line 83
    if-ne v5, v6, :cond_3

    .line 84
    .line 85
    :cond_4
    move-object v3, v4

    .line 86
    :cond_5
    check-cast v3, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 87
    .line 88
    sget-object v1, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->Companion:Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;->a()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_7

    .line 95
    .line 96
    if-nez v3, :cond_6

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    invoke-virtual {p0, p1, v3, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->N0(Ljava/util/List;Lcom/opay/team/newhome/home/bean/HomeData;Lcom/opay/team/newhome/home/bean/HomeData;)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    goto :goto_2

    .line 104
    :cond_7
    :goto_1
    invoke-virtual {p0, p1, v2, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->N0(Ljava/util/List;Lcom/opay/team/newhome/home/bean/HomeData;Lcom/opay/team/newhome/home/bean/HomeData;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    :goto_2
    return p1

    .line 109
    :cond_8
    :goto_3
    const/4 p1, -0x1

    .line 110
    return p1
.end method

.method public final Q(Lag8;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "deleteCode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/opay/team/newhome/bean/HomeBannerDeleteReq;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Lcom/opay/team/newhome/bean/HomeBannerDeleteReq;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->f0()Lcom/opay/team/home/api/HomeApiService$b;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p2, v0}, Lcom/opay/team/home/api/HomeApiService$b;->b(Lcom/opay/team/newhome/bean/HomeBannerDeleteReq;)Lretrofit2/Call;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "200"

    .line 25
    .line 26
    invoke-static {p2, p0, v0}, Lkpc;->d(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance v0, Lys9;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lys9;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$b;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final Q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->L:Z

    .line 2
    .line 3
    return v0
.end method

.method public final R0(Ljr2;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transaction/LastTransactionList;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$lookupLatestTransactions$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$lookupLatestTransactions$2;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final S(Lag8;)V
    .locals 4
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->b:Landroid/app/Application;

    .line 7
    .line 8
    invoke-static {v0}, Lum8;->f(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->H0()Lfv;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lteam/opay/pay/onboarding/GuideRequest;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v1, v3, v3, v2, v3}, Lteam/opay/pay/onboarding/GuideRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lfv;->l0(Lteam/opay/pay/onboarding/GuideRequest;)Lretrofit2/Call;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "200"

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Lkpc;->d(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lts9;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lts9;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final S0(Lag8;Lcom/opay/team/newhome/reward/WidgetModule;)V
    .locals 10
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/WidgetModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/api/GetVouchersBody;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->f()Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lgmf;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const/16 v8, 0x20

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    const-string v2, "3"

    .line 41
    .line 42
    const-string v3, "9999998"

    .line 43
    .line 44
    const-string v4, "2"

    .line 45
    .line 46
    const-string v5, "11"

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    move-object v1, v0

    .line 50
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/api/GetVouchersBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->H0()Lfv;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1, v0}, Lfv;->t(Lteam/opay/pay/api/GetVouchersBody;)Lretrofit2/Call;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lat9;

    .line 66
    .line 67
    invoke-direct {v1, p0, p2}, Lat9;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final U(Lag8;)V
    .locals 8
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->K:Lkotlinx/coroutines/l;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lkotlinx/coroutines/l;->isActive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v5, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {v5, p0, p1, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Ljr2;)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x3

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->K:Lkotlinx/coroutines/l;

    .line 37
    .line 38
    return-void
.end method

.method public final U0(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)V
    .locals 8

    .line 1
    sget-object v0, Lteam/opay/pay/wallet/view/KBoxVoucherTextView;->e:Lteam/opay/pay/wallet/view/KBoxVoucherTextView$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/wallet/view/KBoxVoucherTextView$Companion;->a()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/HomeKBoxRsp;->j()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/HomeKBoxRsp;->j()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v5, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;

    .line 48
    .line 49
    invoke-direct {v5, p1, p0, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$onKboxSuccess$1$1;-><init>(Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljr2;)V

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x2

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->q:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->t:Lteam/opay/pay/util/SingleLiveEvent;

    .line 62
    .line 63
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    return-void
.end method

.method public final V(Lag8;Lcom/opay/team/newhome/reward/HomeRewardsReq;)V
    .locals 7
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/HomeRewardsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v4, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p0, p2, p1, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;Lag8;Ljr2;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final V0(Lcom/opay/team/newhome/reward/SecurityFeel;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->k()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_11

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_6

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v2, v0, :cond_6

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->X(Lcom/opay/team/newhome/reward/SecurityFeel;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v2, v4}, Lcom/opay/team/newhome/reward/SecurityQuestion;->h(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v2, v3

    .line 64
    :goto_0
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v4, 0x0

    .line 72
    :goto_1
    if-eqz v4, :cond_5

    .line 73
    .line 74
    sget-object v4, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 75
    .line 76
    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    sget v5, Lteam/opay/pay/R$string;->osdk_home_security:I

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->k()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :cond_4
    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v3, v0, v1

    .line 95
    .line 96
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const-string v0, ""

    .line 102
    .line 103
    :goto_2
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/reward/SecurityFeel;->m(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_6
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_9

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_9

    .line 119
    .line 120
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_8

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    move-object v5, v4

    .line 135
    check-cast v5, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->q()Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_7

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_8
    move-object v4, v3

    .line 145
    :goto_3
    check-cast v4, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    move-object v4, v3

    .line 149
    :goto_4
    if-eqz v4, :cond_a

    .line 150
    .line 151
    const/4 v1, 0x1

    .line 152
    :cond_a
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-eqz v2, :cond_b

    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->c()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_b

    .line 163
    .line 164
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    move-object v3, v2

    .line 169
    check-cast v3, Ljava/lang/String;

    .line 170
    .line 171
    :cond_b
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    if-eqz v2, :cond_10

    .line 176
    .line 177
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v2, :cond_10

    .line 182
    .line 183
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_10

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    check-cast v4, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 198
    .line 199
    if-eqz v1, :cond_f

    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->q()Z

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-eqz v5, :cond_d

    .line 206
    .line 207
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_c

    .line 216
    .line 217
    const/4 v5, 0x2

    .line 218
    goto :goto_6

    .line 219
    :cond_c
    const/4 v5, 0x1

    .line 220
    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    goto :goto_8

    .line 225
    :cond_d
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_e

    .line 234
    .line 235
    const/4 v5, 0x1

    .line 236
    goto :goto_7

    .line 237
    :cond_e
    const/4 v5, 0x3

    .line 238
    :goto_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    :goto_8
    invoke-virtual {v4, v5}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->y(Ljava/lang/Integer;)V

    .line 243
    .line 244
    .line 245
    :cond_f
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v5}, Lcom/opay/team/newhome/reward/SecurityQuestion;->e()Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v4, v5}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->w(Ljava/lang/Integer;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_10
    :goto_9
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->r:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 258
    .line 259
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 260
    .line 261
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_11
    return-void
.end method

.method public final W(Lag8;Landroid/content/Context;)V
    .locals 7
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->m:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->m:Z

    .line 18
    .line 19
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lni3;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v4, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Landroid/content/Context;Ljr2;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final W0(Lcom/opay/team/newhome/bean/NewPayData;ZLandroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-direct {v3, p0, p1, p2, p3}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$postHomeAdapterData$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/bean/NewPayData;ZLjr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final X(Lcom/opay/team/newhome/reward/SecurityFeel;)Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/SecurityFeel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v11

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/opay/team/newhome/reward/SecurityQuestion;->d()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 45
    .line 46
    :cond_1
    if-eqz v1, :cond_b

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    goto/16 :goto_9

    .line 51
    .line 52
    :cond_2
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->q()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->q()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v12, 0x0

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    :goto_1
    const/4 v12, 0x1

    .line 68
    :goto_2
    if-eqz v12, :cond_6

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->q()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_5

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->j()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    :goto_3
    move-object/from16 v22, v4

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_5
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->j()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    goto :goto_3

    .line 88
    :cond_6
    const-string v4, ""

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :goto_4
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->f()Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-wide/16 v5, 0x0

    .line 96
    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    goto :goto_5

    .line 104
    :cond_7
    move-wide v7, v5

    .line 105
    :goto_5
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->f()Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_8

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v9

    .line 115
    goto :goto_6

    .line 116
    :cond_8
    move-wide v9, v5

    .line 117
    :goto_6
    add-long/2addr v7, v9

    .line 118
    new-instance v26, Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 119
    .line 120
    const/4 v4, 0x3

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->f()Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-eqz v4, :cond_9

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v13

    .line 139
    goto :goto_7

    .line 140
    :cond_9
    move-wide v13, v5

    .line 141
    :goto_7
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->f()Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    if-eqz v4, :cond_a

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide v4

    .line 151
    move-wide v15, v4

    .line 152
    goto :goto_8

    .line 153
    :cond_a
    move-wide v15, v5

    .line 154
    :goto_8
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v17

    .line 158
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v18

    .line 162
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->j()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v19

    .line 166
    invoke-virtual {v2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->j()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v20

    .line 170
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v21

    .line 174
    const/high16 v24, 0x10000

    .line 175
    .line 176
    const/16 v25, 0x0

    .line 177
    .line 178
    const-string v5, ""

    .line 179
    .line 180
    const-string v6, ""

    .line 181
    .line 182
    const-string v7, ""

    .line 183
    .line 184
    const/16 v23, 0x0

    .line 185
    .line 186
    move-object/from16 v4, v26

    .line 187
    .line 188
    move-object v8, v11

    .line 189
    invoke-direct/range {v4 .. v25}, Lcom/opay/team/newhome/reward/SecurityOptionContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;ZJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 190
    .line 191
    .line 192
    new-array v0, v0, [Lcom/opay/team/newhome/reward/SecurityOptionContent;

    .line 193
    .line 194
    aput-object v26, v0, v3

    .line 195
    .line 196
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    goto :goto_a

    .line 201
    :cond_b
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .line 205
    .line 206
    :goto_a
    return-object v0
.end method

.method public final X0(Lag8;J)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/api/HomeSecurityColseReq;

    .line 7
    .line 8
    invoke-direct {v0, p2, p3}, Lteam/opay/pay/api/HomeSecurityColseReq;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->H0()Lfv;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2, v0}, Lfv;->E0(Lteam/opay/pay/api/HomeSecurityColseReq;)Lretrofit2/Call;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance p3, Lzs9;

    .line 24
    .line 25
    invoke-direct {p3, p0}, Lzs9;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p1, p3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final Z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/bean/NewPayData;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/NewPayData;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final Z0(Lcom/opay/team/newhome/reward/SecurityOptionContent;)V
    .locals 8
    .param p1    # Lcom/opay/team/newhome/reward/SecurityOptionContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/api/HomeSecuritySubmitReq;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->r:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityFeel;->e()Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-wide v4, v2

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->r:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityFeel;->g()Lcom/opay/team/newhome/reward/SecurityQuestion;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/SecurityQuestion;->b()Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    move-wide v6, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-wide v6, v2

    .line 49
    :goto_1
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    const-string p1, ""

    .line 56
    .line 57
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    move-object v1, v0

    .line 62
    move-wide v2, v4

    .line 63
    move-wide v4, v6

    .line 64
    move-object v6, p1

    .line 65
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/api/HomeSecuritySubmitReq;-><init>(JJLjava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->H0()Lfv;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1, v0}, Lfv;->G0(Lteam/opay/pay/api/HomeSecuritySubmitReq;)Lretrofit2/Call;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final a0(Ljava/util/List;I)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    new-instance v6, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 36
    .line 37
    new-instance v4, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 38
    .line 39
    invoke-direct {v4, v3}, Lcom/opay/team/newhome/bean/HomeAdData;-><init>(Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    new-instance v15, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getBanner_order()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    move v4, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/16 v0, 0x9

    .line 74
    .line 75
    const/16 v4, 0x9

    .line 76
    .line 77
    :goto_1
    const/16 v0, 0xff4

    .line 78
    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v12, 0x0

    .line 88
    const/4 v13, 0x0

    .line 89
    const/4 v14, 0x0

    .line 90
    move-object v2, v15

    .line 91
    move/from16 v3, p2

    .line 92
    .line 93
    move-object/from16 v17, v15

    .line 94
    .line 95
    move v15, v0

    .line 96
    invoke-direct/range {v2 .. v16}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    move-object/from16 v0, v17

    .line 100
    .line 101
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/4 v2, 0x1

    .line 109
    if-le v0, v2, :cond_3

    .line 110
    .line 111
    new-instance v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$getBannerSortList$$inlined$sortByDescending$1;

    .line 112
    .line 113
    invoke-direct {v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$getBannerSortList$$inlined$sortByDescending$1;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    return-object v1
.end method

.method public final b0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public final c0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->L:Z

    .line 2
    .line 3
    return-void
.end method

.method public final d0(Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/HomeBalance;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$getFlowHomeBalance$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$getFlowHomeBalance$2;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final d1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public final e0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/onboarding/GuideResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e1(Lteam/opay/pay/transaction/LastTransactionList;)V
    .locals 0
    .param p1    # Lteam/opay/pay/transaction/LastTransactionList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->G:Lteam/opay/pay/transaction/LastTransactionList;

    .line 2
    .line 3
    return-void
.end method

.method public final f1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public final g0(ILcom/opay/team/newhome/bean/CommonPayData;)Lcom/opay/team/newhome/home/bean/HomeData;
    .locals 17

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/bean/CommonPayData;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/bean/CommonPayData;->b()Lcom/opay/team/newhome/bean/ModulePayData;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/16 v1, 0x18

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/bean/ModulePayData;->b(Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/bean/CommonPayData;->b()Lcom/opay/team/newhome/bean/ModulePayData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x10

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/bean/ModulePayData;->b(Ljava/lang/Integer;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    new-instance v0, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 48
    .line 49
    const/16 v15, 0xffa

    .line 50
    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    const/4 v3, 0x5

    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    const/4 v13, 0x0

    .line 63
    const/4 v14, 0x0

    .line 64
    move-object v2, v0

    .line 65
    move-object/from16 v5, p2

    .line 66
    .line 67
    invoke-direct/range {v2 .. v16}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 72
    :goto_2
    return-object v0
.end method

.method public final g1(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)V
    .locals 0
    .param p1    # Lcom/opay/team/newhome/reward/HomeKBoxRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->q:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 2
    .line 3
    return-void
.end method

.method public final h0()Lcom/opay/team/newhome/home/bean/HomeData;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->q:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/HomeKBoxRsp;->m()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x13

    .line 15
    .line 16
    const/16 v3, 0x13

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v1, 0xc

    .line 20
    .line 21
    const/16 v3, 0xc

    .line 22
    .line 23
    :goto_0
    new-instance v1, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 24
    .line 25
    iget-object v11, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->q:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 26
    .line 27
    const/16 v15, 0xefe

    .line 28
    .line 29
    const/16 v16, 0x0

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v14, 0x0

    .line 41
    move-object v2, v1

    .line 42
    invoke-direct/range {v2 .. v16}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public final h1(Lcom/opay/team/newhome/reward/SecurityFeel;)V
    .locals 0
    .param p1    # Lcom/opay/team/newhome/reward/SecurityFeel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->r:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 2
    .line 3
    return-void
.end method

.method public final i0()Lcom/opay/team/newhome/home/bean/HomeData;
    .locals 17

    .line 1
    new-instance v15, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 2
    .line 3
    move-object/from16 v14, p0

    .line 4
    .line 5
    iget-object v10, v14, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->r:Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 6
    .line 7
    const/16 v13, 0xdfe

    .line 8
    .line 9
    const/16 v16, 0x0

    .line 10
    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    move-object v0, v15

    .line 24
    move-object/from16 v14, v16

    .line 25
    .line 26
    invoke-direct/range {v0 .. v14}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    .line 28
    .line 29
    return-object v15
.end method

.method public final i1(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final j0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->B:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k1(Lcom/opay/team/newhome/reward/HomeKBoxRsp;)Lcom/opay/team/newhome/reward/HomeKBoxRsp;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/HomeKBoxRsp;->j()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/opay/team/newhome/reward/WidgetModule;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/HomeKBoxRsp;->f()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/opay/team/newhome/reward/WidgetModule;->A(Ljava/lang/Integer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/opay/team/newhome/reward/WidgetModule;->B()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object p1
.end method

.method public final l0()Lteam/opay/pay/transaction/LastTransactionList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->G:Lteam/opay/pay/transaction/LastTransactionList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l1(Lcom/opay/team/newhome/bean/NewPayData;Z)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/bean/NewPayData;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v8, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->j:Lteam/opay/core/api/graphql/HomeBalance;

    .line 9
    .line 10
    iget-object v10, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->k:Lcom/opay/team/newhome/home/bean/AmountError;

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/bean/NewPayData;->a()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    new-instance v15, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 17
    .line 18
    const/16 v16, 0xf1e

    .line 19
    .line 20
    const/16 v17, 0x0

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v12, 0x0

    .line 29
    const/4 v13, 0x0

    .line 30
    const/4 v14, 0x0

    .line 31
    move-object v2, v15

    .line 32
    move-object/from16 v18, v15

    .line 33
    .line 34
    move/from16 v15, v16

    .line 35
    .line 36
    move-object/from16 v16, v17

    .line 37
    .line 38
    invoke-direct/range {v2 .. v16}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    move-object/from16 v2, v18

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/bean/NewPayData;->k()Lcom/opay/team/newhome/bean/CommonPayData;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    new-instance v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 53
    .line 54
    const/16 v16, 0xffa

    .line 55
    .line 56
    const/16 v17, 0x0

    .line 57
    .line 58
    const/16 v4, 0xd

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    const/4 v14, 0x0

    .line 69
    const/4 v15, 0x0

    .line 70
    move-object v3, v2

    .line 71
    invoke-direct/range {v3 .. v17}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/bean/NewPayData;->m()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/16 v3, 0x14

    .line 84
    .line 85
    invoke-virtual {v0, v2, v3}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->a0(Ljava/util/List;I)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_1

    .line 94
    .line 95
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    .line 97
    .line 98
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    const/16 v3, 0xa

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    if-nez p2, :cond_4

    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/bean/NewPayData;->d()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-eqz v5, :cond_4

    .line 113
    .line 114
    new-instance v10, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_2

    .line 132
    .line 133
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 138
    .line 139
    new-instance v8, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 140
    .line 141
    invoke-direct {v8, v7}, Lcom/opay/team/newhome/bean/HomeAdData;-><init>(Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v10, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-nez v6, :cond_4

    .line 153
    .line 154
    new-instance v15, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 155
    .line 156
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 161
    .line 162
    invoke-virtual {v5}, Lcom/opay/team/newhome/bean/NewBusinessData;->getBanner_order()Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    if-eqz v5, :cond_3

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    move v8, v5

    .line 173
    goto :goto_1

    .line 174
    :cond_3
    const/16 v5, 0x9

    .line 175
    .line 176
    const/16 v8, 0x9

    .line 177
    .line 178
    :goto_1
    const/16 v19, 0xff4

    .line 179
    .line 180
    const/16 v20, 0x0

    .line 181
    .line 182
    const/16 v7, 0xa

    .line 183
    .line 184
    const/4 v9, 0x0

    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v12, 0x0

    .line 187
    const/4 v13, 0x0

    .line 188
    const/4 v14, 0x0

    .line 189
    const/4 v5, 0x0

    .line 190
    const/16 v16, 0x0

    .line 191
    .line 192
    const/16 v17, 0x0

    .line 193
    .line 194
    const/16 v18, 0x0

    .line 195
    .line 196
    move-object v6, v15

    .line 197
    move-object v3, v15

    .line 198
    move-object v15, v5

    .line 199
    invoke-direct/range {v6 .. v20}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    const/4 v5, 0x1

    .line 210
    if-le v3, v5, :cond_5

    .line 211
    .line 212
    new-instance v3, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$setupList$$inlined$sortByDescending$1;

    .line 213
    .line 214
    invoke-direct {v3}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$setupList$$inlined$sortByDescending$1;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;Ljava/util/Comparator;)V

    .line 218
    .line 219
    .line 220
    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-nez v3, :cond_6

    .line 225
    .line 226
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    .line 228
    .line 229
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/bean/NewPayData;->l()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    if-eqz v2, :cond_9

    .line 234
    .line 235
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_7

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/bean/NewPayData;->l()Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-nez v3, :cond_9

    .line 251
    .line 252
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Lcom/opay/team/newhome/bean/CommonPayData;

    .line 257
    .line 258
    invoke-virtual {v3}, Lcom/opay/team/newhome/bean/CommonPayData;->a()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    if-eqz v3, :cond_9

    .line 263
    .line 264
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_8

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_8
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Lcom/opay/team/newhome/bean/CommonPayData;

    .line 276
    .line 277
    invoke-virtual {v0, v4, v2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->g0(ILcom/opay/team/newhome/bean/CommonPayData;)Lcom/opay/team/newhome/home/bean/HomeData;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    if-eqz v2, :cond_9

    .line 282
    .line 283
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    :cond_9
    :goto_2
    iget-object v2, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->i:Lcom/opay/team/newhome/home/bean/HomeData;

    .line 287
    .line 288
    if-eqz v2, :cond_a

    .line 289
    .line 290
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    :cond_a
    new-instance v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 294
    .line 295
    const/16 v19, 0xffe

    .line 296
    .line 297
    const/16 v20, 0x0

    .line 298
    .line 299
    const/16 v7, 0x9

    .line 300
    .line 301
    const/4 v8, 0x0

    .line 302
    const/4 v9, 0x0

    .line 303
    const/4 v10, 0x0

    .line 304
    const/4 v11, 0x0

    .line 305
    const/4 v12, 0x0

    .line 306
    const/4 v13, 0x0

    .line 307
    const/4 v14, 0x0

    .line 308
    const/4 v15, 0x0

    .line 309
    const/16 v16, 0x0

    .line 310
    .line 311
    const/16 v17, 0x0

    .line 312
    .line 313
    const/16 v18, 0x0

    .line 314
    .line 315
    move-object v6, v2

    .line 316
    invoke-direct/range {v6 .. v20}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 317
    .line 318
    .line 319
    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    new-instance v2, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .line 326
    .line 327
    if-nez p2, :cond_d

    .line 328
    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/bean/NewPayData;->b()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    if-eqz v3, :cond_d

    .line 334
    .line 335
    new-instance v10, Ljava/util/ArrayList;

    .line 336
    .line 337
    const/16 v6, 0xa

    .line 338
    .line 339
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    if-eqz v7, :cond_b

    .line 355
    .line 356
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    check-cast v7, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 361
    .line 362
    new-instance v8, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 363
    .line 364
    invoke-direct {v8, v7}, Lcom/opay/team/newhome/bean/HomeAdData;-><init>(Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v10, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_b
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-nez v6, :cond_d

    .line 376
    .line 377
    new-instance v15, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 378
    .line 379
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    check-cast v3, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 384
    .line 385
    invoke-virtual {v3}, Lcom/opay/team/newhome/bean/NewBusinessData;->getBanner_order()Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    if-eqz v3, :cond_c

    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    move v8, v3

    .line 396
    goto :goto_4

    .line 397
    :cond_c
    const/16 v3, 0xc

    .line 398
    .line 399
    const/16 v8, 0xc

    .line 400
    .line 401
    :goto_4
    const/16 v19, 0xff4

    .line 402
    .line 403
    const/16 v20, 0x0

    .line 404
    .line 405
    const/4 v7, 0x3

    .line 406
    const/4 v9, 0x0

    .line 407
    const/4 v11, 0x0

    .line 408
    const/4 v12, 0x0

    .line 409
    const/4 v13, 0x0

    .line 410
    const/4 v14, 0x0

    .line 411
    const/4 v3, 0x0

    .line 412
    const/16 v16, 0x0

    .line 413
    .line 414
    const/16 v17, 0x0

    .line 415
    .line 416
    const/16 v18, 0x0

    .line 417
    .line 418
    move-object v6, v15

    .line 419
    move-object v5, v15

    .line 420
    move-object v15, v3

    .line 421
    invoke-direct/range {v6 .. v20}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 422
    .line 423
    .line 424
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    :cond_d
    if-nez p2, :cond_12

    .line 428
    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/bean/NewPayData;->c()Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    if-eqz v3, :cond_10

    .line 434
    .line 435
    new-instance v9, Ljava/util/ArrayList;

    .line 436
    .line 437
    const/16 v5, 0xa

    .line 438
    .line 439
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 444
    .line 445
    .line 446
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    if-eqz v6, :cond_e

    .line 455
    .line 456
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    check-cast v6, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 461
    .line 462
    new-instance v7, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 463
    .line 464
    invoke-direct {v7, v6}, Lcom/opay/team/newhome/bean/HomeAdData;-><init>(Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 465
    .line 466
    .line 467
    invoke-interface {v9, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    goto :goto_5

    .line 471
    :cond_e
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    if-nez v5, :cond_10

    .line 476
    .line 477
    new-instance v15, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 478
    .line 479
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    check-cast v3, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 484
    .line 485
    invoke-virtual {v3}, Lcom/opay/team/newhome/bean/NewBusinessData;->getBanner_order()Ljava/lang/Integer;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    if-eqz v3, :cond_f

    .line 490
    .line 491
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    move v7, v3

    .line 496
    goto :goto_6

    .line 497
    :cond_f
    const/16 v3, 0xb

    .line 498
    .line 499
    const/16 v7, 0xb

    .line 500
    .line 501
    :goto_6
    const/16 v18, 0xff4

    .line 502
    .line 503
    const/16 v19, 0x0

    .line 504
    .line 505
    const/4 v6, 0x4

    .line 506
    const/4 v8, 0x0

    .line 507
    const/4 v10, 0x0

    .line 508
    const/4 v11, 0x0

    .line 509
    const/4 v12, 0x0

    .line 510
    const/4 v13, 0x0

    .line 511
    const/4 v14, 0x0

    .line 512
    const/4 v3, 0x0

    .line 513
    const/16 v16, 0x0

    .line 514
    .line 515
    const/16 v17, 0x0

    .line 516
    .line 517
    move-object v5, v15

    .line 518
    move-object v4, v15

    .line 519
    move-object v15, v3

    .line 520
    invoke-direct/range {v5 .. v19}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/bean/NewPayData;->n()Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    if-eqz v3, :cond_12

    .line 531
    .line 532
    new-instance v8, Ljava/util/ArrayList;

    .line 533
    .line 534
    const/16 v4, 0xa

    .line 535
    .line 536
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 537
    .line 538
    .line 539
    move-result v4

    .line 540
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    .line 542
    .line 543
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    if-eqz v4, :cond_11

    .line 552
    .line 553
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    check-cast v4, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 558
    .line 559
    new-instance v5, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 560
    .line 561
    invoke-direct {v5, v4}, Lcom/opay/team/newhome/bean/HomeAdData;-><init>(Lcom/opay/team/newhome/bean/NewBusinessData;)V

    .line 562
    .line 563
    .line 564
    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    goto :goto_7

    .line 568
    :cond_11
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-nez v3, :cond_12

    .line 573
    .line 574
    new-instance v3, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 575
    .line 576
    const/16 v17, 0xff4

    .line 577
    .line 578
    const/16 v18, 0x0

    .line 579
    .line 580
    const/16 v5, 0x12

    .line 581
    .line 582
    const/4 v6, -0x1

    .line 583
    const/4 v7, 0x0

    .line 584
    const/4 v9, 0x0

    .line 585
    const/4 v10, 0x0

    .line 586
    const/4 v11, 0x0

    .line 587
    const/4 v12, 0x0

    .line 588
    const/4 v13, 0x0

    .line 589
    const/4 v14, 0x0

    .line 590
    const/4 v15, 0x0

    .line 591
    const/16 v16, 0x0

    .line 592
    .line 593
    move-object v4, v3

    .line 594
    invoke-direct/range {v4 .. v18}, Lcom/opay/team/newhome/home/bean/HomeData;-><init>(IILcom/opay/team/newhome/bean/CommonPayData;Ljava/util/List;Ljava/util/List;Lteam/opay/core/api/graphql/HomeBalance;Ljava/util/List;Lcom/opay/team/newhome/home/bean/AmountError;Lcom/opay/team/newhome/reward/HomeKBoxRsp;Lcom/opay/team/newhome/reward/SecurityFeel;Lteam/opay/pay/transaction/TransactionInfoV2;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 595
    .line 596
    .line 597
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    :cond_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    const/4 v4, 0x1

    .line 605
    if-le v3, v4, :cond_13

    .line 606
    .line 607
    new-instance v3, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$setupList$$inlined$sortByDescending$2;

    .line 608
    .line 609
    invoke-direct {v3}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$setupList$$inlined$sortByDescending$2;-><init>()V

    .line 610
    .line 611
    .line 612
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;Ljava/util/Comparator;)V

    .line 613
    .line 614
    .line 615
    :cond_13
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    if-nez v3, :cond_14

    .line 620
    .line 621
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 622
    .line 623
    .line 624
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    check-cast v2, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 629
    .line 630
    iput-object v2, v0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->n:Lcom/opay/team/newhome/home/bean/HomeData;

    .line 631
    .line 632
    :cond_14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    const/4 v4, 0x0

    .line 637
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 638
    .line 639
    .line 640
    move-result v3

    .line 641
    if-eqz v3, :cond_18

    .line 642
    .line 643
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    add-int/lit8 v5, v4, 0x1

    .line 648
    .line 649
    if-gez v4, :cond_15

    .line 650
    .line 651
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 652
    .line 653
    .line 654
    :cond_15
    check-cast v3, Lcom/opay/team/newhome/home/bean/HomeData;

    .line 655
    .line 656
    invoke-virtual {v3}, Lcom/opay/team/newhome/home/bean/HomeData;->f()I

    .line 657
    .line 658
    .line 659
    move-result v6

    .line 660
    const/4 v7, 0x3

    .line 661
    if-eq v6, v7, :cond_16

    .line 662
    .line 663
    const/4 v7, 0x4

    .line 664
    if-eq v6, v7, :cond_16

    .line 665
    .line 666
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 667
    .line 668
    .line 669
    goto :goto_a

    .line 670
    :cond_16
    invoke-virtual {v3}, Lcom/opay/team/newhome/home/bean/HomeData;->c()Ljava/util/List;

    .line 671
    .line 672
    .line 673
    move-result-object v3

    .line 674
    if-eqz v3, :cond_17

    .line 675
    .line 676
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 681
    .line 682
    .line 683
    move-result v6

    .line 684
    if-eqz v6, :cond_17

    .line 685
    .line 686
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    check-cast v6, Lcom/opay/team/newhome/bean/HomeAdData;

    .line 691
    .line 692
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/HomeAdData;->a()Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 693
    .line 694
    .line 695
    move-result-object v6

    .line 696
    invoke-virtual {v6, v4}, Lcom/opay/team/newhome/bean/NewBusinessData;->setRecyclerIndex(I)V

    .line 697
    .line 698
    .line 699
    goto :goto_9

    .line 700
    :cond_17
    :goto_a
    move v4, v5

    .line 701
    goto :goto_8

    .line 702
    :cond_18
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->O0(Ljava/util/List;)I

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->P0(Ljava/util/List;)I

    .line 706
    .line 707
    .line 708
    return-object v1
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->c:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final m0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->c:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/bean/NewPayData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder;->g:Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder$Companion;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/opay/team/newhome/home/holder/HomeKBoxViewHolder$Companion;->a(I)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lteam/opay/pay/wallet/view/KBoxVoucherTextView;->e:Lteam/opay/pay/wallet/view/KBoxVoucherTextView$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/wallet/view/KBoxVoucherTextView$Companion;->a()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->c:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final p0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->C:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/reward/WidgetModule;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->D:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->E:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->F:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0(Lag8;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v4, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$getProfile$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$getProfile$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Lkotlin/jvm/functions/Function1;Ljr2;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final u0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/home/bean/HomeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->u:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->h:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/opay/team/newhome/reward/HomeRewardsReq;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->t:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z0()Lcom/opay/team/newhome/reward/HomeKBoxRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->q:Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 2
    .line 3
    return-object v0
.end method
