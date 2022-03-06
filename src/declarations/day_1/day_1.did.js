export const idlFactory = ({ IDL }) => {
  return IDL.Service({ 'inf_to_one' : IDL.Func([IDL.Nat], [IDL.Text], []) });
};
export const init = ({ IDL }) => { return []; };
